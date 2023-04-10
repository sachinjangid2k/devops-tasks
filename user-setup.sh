#!/bin/bash

# Read the users and their public keys from the file
while IFS=':' read -r username pubkey;
do
  # Extract the username and public key from the line
  username=$username
  pubkey=$pubkey

  # Create the user account with home directory and passwordless ssh access
  useradd -m -s /bin/bash $username
  mkdir -p /home/$username/.ssh
  echo $pubkey >> /home/$username/.ssh/authorized_keys
  chmod 700 /home/$username/.ssh
  chmod 600 /home/$username/.ssh/authorized_keys
  chown -R $username:$username /home/$username/.ssh
done < users.txt