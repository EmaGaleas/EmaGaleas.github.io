#!/bin/bash

# Define the URL of the web page to monitor
PAGE_URL="https://emagaleas.github.io/"

# Make a cURL request to the page URL
response=$(curl -s -o /dev/null -w "%{http_code}" $PAGE_URL)

# Check the HTTP response code
if [ $response -eq 200 ]; then
  echo "Web page is UP: HTTP Status Code - $response"
  exit 0  # Exit with success status code
else
  echo "Web page is DOWN: HTTP Status Code - $response"
  exit 1  # Exit with error status code
fi
