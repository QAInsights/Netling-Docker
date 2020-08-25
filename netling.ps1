# Prints the message with the passed arguments
Write-Host "********************************************************************"
Write-Host "Execution has been started in CLI mode for the following args: $args"

$command = -join(".\Netling.exe ","$args")
Invoke-Expression $command | Tee-Object -FilePath .\Netling-Output.txt

# Prints the execution completed message
Write-Host "Execution has been completed. Output has been stored at .\Netling-Output.txt"
Write-Host "********************************************************************"
