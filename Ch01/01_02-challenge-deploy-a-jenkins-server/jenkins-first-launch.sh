#!/bin/bash
# vi: ft=bash

echo "# $(date) Restart Jenkins..."
systemctl restart jenkins

echo "# $(date) Copy the initial admin password to the root user's home directory..."
cp /var/lib/jenkins/secrets/initialAdminPassword ~

echo "# Open the URL for this server in a browser and log in with the following credentials:"
echo
echo
echo "    Username: admin"
echo "    Password: $(cat /var/lib/jenkins/secrets/initialAdminPassword)"
echo
echo