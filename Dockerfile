# escape=`
# Dockerfile for Netling for Windows
FROM mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-2004

LABEL maintainer="NaveenKumar Namachivayam" `
      website="https://qainsights.com"

ARG NETLING_NAME="Netling.ConsoleClient.netcore2.1.Win10-x64"
ARG NETLING_DOWNLOAD_URL="https://github.com/hallatore/Netling/releases/download/untagged-f7e606f387b744ec9cdc"

COPY /netling.ps1 /netling.ps1

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Download the Netling Console from GitHub
RUN Invoke-WebRequest -URI $env:NETLING_DOWNLOAD_URL/$env:NETLING_NAME.zip `
-UseBasicParsing -Outfile /$env:NETLING_NAME.zip

# Extracting zip file
RUN Expand-Archive /$env:NETLING_NAME.zip -DestinationPath /$env:NETLING_NAME

# Setting up Working Directory
WORKDIR /${NETLING_NAME}

# Setting up Entrypoint
ENTRYPOINT ["powershell.exe", "/netling.ps1"]