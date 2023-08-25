#!/bin/bash
# This script sends an HTTP request to a specified URL
# You can customize the URL to point to your application

URL="https://www.youtube.com/"  # Replace with your application's URL

# Use a tool like curl or wget to send an HTTP GET request
curl -s "$URL" > /dev/null

chmod +x keep_alive.sh
crontab -e
*/1 * * * * /path/to/keep_alive.sh
