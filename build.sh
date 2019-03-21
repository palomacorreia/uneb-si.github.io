#!/bin/bash
SECONDS=0.0;

echo "Generation Html files from markdown"
for file in `find ./pages/  -name "*.md" -print -type f`; do
  echo ">> generating $file"
  markgen -e  "$file"
  # echo ">> ok"
done

echo ""
echo "Creating public folder"
mkdir public >/dev/null 2>&1
# echo ">> ok"


echo ""
echo "Moving html files to public folder"
for file in `find ./pages/  -name "*.html" -print -type f`; do
  echo ">> moving $file"
  mv "$file" public/. --force --update
  # echo ">> ok"
done

echo ""
echo "Build finished, $SECONDS s"



