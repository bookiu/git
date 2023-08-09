# Check if GIT_TEMP environment variable exists
if ($env:GIT_TEMP) {
    # Set TMP environment variable to the value of GIT_TEMP for the current script
    $env:TMP = $env:GIT_TEMP
}

# Call git command with the script's arguments
git $args
