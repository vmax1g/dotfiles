#!/bin/bash

# Function to shutdown the PC
shutdown_pc() {
    echo "Shutting down the PC..."
    sudo shutdown -h now
}

# Function to reboot the PC
reboot_pc() {
    echo "Rebooting the PC..."
    sudo reboot
}

# Function to lock the PC
lock_pc() {
    echo "Locking the PC..."
    # Use gnome-screensaver-command if you're using GNOME
    i3lock

    # Alternatively, use dm-tool if you're using LightDM
    # dm-tool lock

    # Or use xdg-screensaver if you're using another desktop environment
    # xdg-screensaver lock
}

# Function to restart i3 window manager
restart_i3() {
    echo "Restarting i3 window manager..."
    i3-msg restart
}

# Use rofi to display the menu and get the user's choice
choice=$(echo -e "Shutdown\nReboot\nLock\nRestart i3\nCancel" | rofi -dmenu -p "Choose an action:")

# Take action based on the user's choice
case $choice in
    Shutdown)
        shutdown_pc
        ;;
    Reboot)
        reboot_pc
        ;;
    Lock)
        lock_pc
        ;;
    "Restart i3")
        restart_i3
        ;;
    Cancel)
        echo "Operation cancelled."
        ;;
    *)
        echo "Invalid choice. Exiting."
        ;;
esac

