!/bin/bash

cd "/home/ratix/Downloads"
for file in *.zip; do
  mkdir "upload-feed" ; unzip "feed-linkedin.zip" -d "/home/ratix/Downloads/upload-feed" ; rm "feed-linkedin.zip"
done
