#!/bin/bash

# Interactive Setup Wizard Script for grqndma2-busking-plugin

echo "Welcome to the grqndma2-busking-plugin setup wizard!"

echo "Do you want to proceed with the setup? (yes/no)"
read answer
if [[ $answer != "yes" ]]; then
    echo "Setup exited."
    exit 1
fi

# Gather user inputs for configuration

# Question 1: Enable feature X?
echo "Do you want to enable Feature X? (yes/no)"
read answer
if [[ $answer == "yes" ]]; then
    FEATURE_X=true
else
    FEATURE_X=false
fi

echo "Feature X set to: $FEATURE_X"

# Question 2: Set preferred busking style
echo "Would you like to set a preferred busking style? (yes/no)"
read answer
if [[ $answer == "yes" ]]; then
    echo "Please enter your preferred busking style:"
    read BUSKING_STYLE
else
    BUSKING_STYLE="None"
fi

echo "Preferred Busking Style: $BUSKING_STYLE"

# Question 3: Enable notifications?
echo "Do you want to enable notifications? (yes/no)"
read answer
if [[ $answer == "yes" ]]; then
    NOTIFICATIONS=true
else
    NOTIFICATIONS=false
fi

echo "Notifications set to: $NOTIFICATIONS"

# Save configuration
CONFIG_FILE="busking_config.conf"
echo "# Busking Plugin Configuration" > $CONFIG_FILE

echo "FEATURE_X=$FEATURE_X" >> $CONFIG_FILE
echo "BUSKING_STYLE='$BUSKING_STYLE'" >> $CONFIG_FILE
echo "NOTIFICATIONS=$NOTIFICATIONS" >> $CONFIG_FILE

echo "Configuration saved to $CONFIG_FILE."

echo "Setup complete! Thank you for using the setup wizard."