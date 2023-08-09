# Check if GIT_TEMP environment variable exists
if ($env:GIT_TEMP) {
    # Set TMP environment variable to the value of GIT_TEMP for the current script
    $env:TMP = $env:GIT_TEMP
}

# Call git command with the script's arguments
if ($env:GIT_INSTALL_ROOT) {
    $gitbin = $env:GIT_INSTALL_ROOT + "\bin\git.exe"
} else {
    $gitbin = "git.exe"
}
& $gitbin $args
