#!/bin/bash

for file in `find . -path ./node_modules -prune -o -name "*.md" -print -type f`; do
  markgen -e  "$file"
done

mv *.html */*.html public/. --force 2> /dev/null
