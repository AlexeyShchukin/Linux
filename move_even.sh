#!/bin/bash
DIR=/opt/091224-ptm/Shchukin/Dir1/
for file in $DIR/*
do
file_name=$(basename $file)
if ((file_name % 2 == 0)); then
mv $file /opt/091224-ptm/Shchukin/Dir2/
fi
done
