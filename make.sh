#! /usr/bin/env sh

echo "html_horizontal.html";
../../dist/app.js -m ./html_horizontal.md -o ./html_horizontal.html;

echo "html_vertical.html";
../../dist/app.js -m ./html_vertical.md -o ./html_vertical.html;

echo "pdf_A3.pdf";
../../dist/app.js -m ./pdf_A3.md -o ./pdf_A3.pdf;

cp ./html_horizontal.html ./index.html;
