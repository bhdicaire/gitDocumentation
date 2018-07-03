#!/bin/bash
dir1="/tmp/dir1"
dir2="/tmp/dir2"
IFS=$'\n'
for file in $(grep -Ilsr -m 1 '.' "$dir1"); do diff -q --exclude="cache" "$file" "${file/${dir1}/${dir2}}" 2> /dev/null; done