#!/bin/bash

for file in `find ./pages/  -name "*.md" -print -type f`; do
  markgen -e  "$file"
done

mv pages/*.html public/. --force --update
