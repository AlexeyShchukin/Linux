#!/bin/bash

if [ -z "$2" ]; # если второй аргумент отсутствует (zero)
  then
    echo "No path"
  else
    FNAME=$(basename "$1") # зписываем в переменную имя файла, после последнего слеша в первом аргументе
    if [[ "$2" != */ ]];
      then
        DNAME=$(dirname "$2") # берем весь путь до последнего слеша из второго аргумента
    else 
      DNAME="$2"
    fi

echo "file_name: $FNAME"
echo "path: $DNAME"
mkdir -p "$DNAME"
echo "Path to $DNAME file $FNAME"
cp "$1" "$2" 
fi
