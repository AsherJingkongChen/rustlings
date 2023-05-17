#! /usr/bin/env sh

echo "index.html";
../../dist/app.js -m ./index.html.md -o ./index.html;

echo "A3.pdf";
../../dist/app.js -m ./A3.pdf.md -o ./A3.pdf;
