#!/bin/bash
SECONDS=0.0;

echo "Generation Html files from markdown"
for file in `find ./pages/  -name "*.md" -print -type f`; do
  echo ">> generating $file"
  markgen -e  "$file"
done

echo ""
echo "Creating public folder"
mkdir public >/dev/null 2>&1



echo ""
echo "Moving html files to public folder"
for file in `find ./pages/  -name "*.html" -print -type f`; do
  echo ">> moving $file"
  mv "$file" public/. --force --update
done


echo ""
echo "Creating public docs folder"
mkdir public/docs >/dev/null 2>&1

echo ""
echo "Coping docs to public folder"
for file in `find ./docs/  -name "*.*" -print -type f`; do
  echo ">> coping $file"
  cp "$file" public/docs/. --force --update
done


echo ""
echo "Build finished, $SECONDS s"



