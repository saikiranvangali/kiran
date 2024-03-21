#!/bin/bash
# This is a shell script to generate an HTML file with the current date and time

# Get the current date and time
datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Create the HTML content
html_content="<html>
<head>
    <title>Date and Time</title>
    <script>
        function updateDateTime() {
            var now = new Date();
            var datetimeElement = document.getElementById('datetime');
            datetimeElement.innerHTML = 'Current Date and Time: ' + now.toLocaleString();
        }
        setInterval(updateDateTime, 1000); // Update every second
    </script>
</head>
<body onload=\"updateDateTime()\">
    <h1>Date and Time</h1>
    <p id=\"datetime\">Current Date and Time: $datetime</p>
</body>
</html>"

# Write the HTML content to a file
echo "$html_content" > datetime.html

echo "HTML file with date and time has been generated."

