# Prints the message with the passed arguments
Write-Host "Execution has been started in CLI mode for the following args: $args"

$command = -join(".\Netling.exe ","$args")
Invoke-Expression $command
# Prints the execution completed message
Write-Host "Execution has been completed."