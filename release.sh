#!/bin/bash
rm -R ./release/*
cp *.lyx ./release/
cp *.md ./release/
cp *.bib ./release/

cp ./ustcthesis/ustcthesis-*.bst ./release/
cp ./ustcthesis/ustcthesis.cls ./release/
cp -R ./ustcthesis/figures ./release/
cp ./USTCthesis.layout ./release/


cp -R ./chapters ./release/
rm ./release/chapters/*.lyx~
cp ./ustcthesis/ustcthesis.cls ./release/chapters/
cp ./USTCthesis.layout ./release/chapters/
