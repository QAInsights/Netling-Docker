# escape=`
FROM mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-2004

COPY /netling.ps1 /netling.ps1

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

RUN Invoke-WebRequest -URI 'https://github.com/hallatore/Netling/releases/download/untagged-f7e606f387b744ec9cdc/Netling.ConsoleClient.netcore2.1.Win10-x64.zip' `
-UseBasicParsing -Outfile /Netling.ConsoleClient.netcore2.1.Win10-x64.zip

RUN Expand-Archive /Netling.ConsoleClient.netcore2.1.Win10-x64.zip -DestinationPath /Netling.ConsoleClient.netcore2.1.Win10-x64

WORKDIR /Netling.ConsoleClient.netcore2.1.Win10-x64

ENTRYPOINT ["powershell.exe", "/netling.ps1"]