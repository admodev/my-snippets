#!/bin/bash

# This command gets the title from the url passed in it and prints it to the console...
wget -qO- 'https://www.youtube.com/watch?v=qCUp8OP-Ilg' |
  gawk -v IGNORECASE=1 -v RS='</title' 'RT{gsub(/.*<title[^>]*>/,"");print;exit}'
