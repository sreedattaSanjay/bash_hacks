#!/bin/bash

# NAME:         pdflinkextractor
# AUTHOR:       Glutanimate (http://askubuntu.com/users/81372/), 2013
# LICENSE:      GNU GPL v2
# DEPENDENCIES: wget lynx
# DESCRIPTION:  extracts PDF links from websites and dumps them to the stdout and as a textfile
#               only works for links pointing to files with the ".pdf" extension
#
# USAGE:        pdflinkextractor "www.website.com"

WEBSITE="$1"

echo "Getting link list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.jpg$" | awk '{print $2}' | tee pdflinks.txt

# OPTIONAL
#
# DOWNLOAD PDF FILES
#
echo "Downloading..."    
wget -nc -P ./ -i pdflinks.txt

#wget -r -A.jpg https://boards.4chan.org/co/thread/93164573