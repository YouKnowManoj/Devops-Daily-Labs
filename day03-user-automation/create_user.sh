#!/bin/bash

# If the user did NOT give exactly one argument…
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME=$1

sudo useradd -m $USERNAME

sudo passwd $USERNAME

sudo usermod -aG sudo $USERNAME

sudo chage -d 0 $USERNAME

echo "User $USERNAME created and added to sudo group."
echo "The user will be prompted to change the password on first login."