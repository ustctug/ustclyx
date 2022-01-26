#!/bin/bash
if [ ! -d "./release/" ];then
	mkdir release
else
	rm -R ./release/*
fi

cp *.tex ./release/
cp *.lyx ./release/
cp *.md ./release/
cp *.bib ./release/

cp ./ustcthesis/ustcthesis-*.bst ./release/
cp ./ustcthesis/ustcthesis.cls ./release/
cp -R ./ustcthesis/figures ./release/
cp ./USTCthesis.layout ./release/


cp -R ./chapters ./release/
cp ./ustcthesis/ustcthesis.cls ./release/chapters/
cp ./USTCthesis.layout ./release/chapters/

FINDED_FILES=`find ./release/chapters -name *.lyx~`
for file in ${FINDED_FILES}
do
    rm -rf ${file}
done

echo 'reflesh release folder'
