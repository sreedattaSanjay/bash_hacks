#!/bin/bash

# NAME:         get_all_media.sh
# AUTHOR:       crashhacker
# LICENSE:      bash get_all_media.sh www.website.com

WEBSITE="$1"

echo "Getting jpg list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.jpg$" | awk '{print $2}' | tee jpg_pic_links.txt


echo "Downloading jpg_pics..."    
wget -nc -P ./jpg_pics -i jpg_pic_links.txt

WEBSITE="$1"

echo "Getting png list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.png$" | awk '{print $2}' | tee png_pic_links.txt


echo "Downloading... png_pics..."    
wget -nc -P ./png_pics -i png_pic_links.txt



WEBSITE="$1"

echo "Getting gif list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.gif$" | awk '{print $2}' | tee gif_pic_links.txt


echo "Downloading....gif_pics..."    
wget -nc -P ./gif_pics -i gif_pic_links.txt


WEBSITE="$1"

echo "Getting webm list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.webm$" | awk '{print $2}' | tee webm_links.txt


echo "Downloading...webms..."    
wget -nc -P ./webms -i webm_links.txt

WEBSITE="$1"

echo "Getting mp4 list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.mp4$" | awk '{print $2}' | tee mp4_links.txt


echo "Downloading..mp4s..."    
wget -nc -P ./mp4s -i mp4_links.txt

WEBSITE="$1"

echo "Getting pdf list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.pdf$" | awk '{print $2}' | tee pdf_links.txt


echo "Downloading..pdfs..."    
wget -nc -P ./pdfs -i pdf_links.txt


WEBSITE="$1"

echo "Getting text list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.txt$" | awk '{print $2}' | tee text_links.txt


echo "Downloading..text_files..."    
wget -nc -P ./txts -i text_links.txt


WEBSITE="$1"

echo "Getting html list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.html$" | awk '{print $2}' | tee html_links.txt


echo "Downloading..html_files..."    
wget -nc -P ./htmls -i html_links.txt


WEBSITE="$1"

echo "Getting ppt list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.ppt$" | awk '{print $2}' | tee ppt_links.txt


echo "Downloading..ppt_files..."    
wget -nc -P ./ppts -i ppt_links.txt

WEBSITE="$1"

echo "Getting pptx list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.pptx$" | awk '{print $2}' | tee pptx_links.txt


echo "Downloading..pptx_files..."    
wget -nc -P ./pptxs -i pptx_links.txt

WEBSITE="$1"

echo "Getting zip list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.html$" | awk '{print $2}' | tee zip_links.txt


echo "Downloading..zip_files..."    
wget -nc -P ./zips -i zip_links.txt


WEBSITE="$1"

echo "Getting tar list..."

lynx -cache=0 -dump -listonly "$WEBSITE" | grep ".*\.tar.gz$" | awk '{print $2}' | tee tar_links.txt


echo "Downloading..tar_files..."    
wget -nc -P ./tars -i tar_links.txt