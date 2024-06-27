#!/bin/bash
wkdir=$(pwd)
cd ${wkdir}
git add .
current_create_time=`date +"%Y-%m-%d %H:%M"`
str="Code updated: ${current_create_time}"

read -p "Do you want to write a comment？[y/n] " input

case $input in
        [yY]*)
                read -p "Input your comment, please: " comment
		echo "Your comment is '$comment'"
		git commit -m "${comment}"
                ;;
        [nN]*)
                git commit -m "${str}"
		echo "Your comment is '${str}'"
                ;;
        *)
                git commit -m "${str}"
		echo "Your comment is '${str}'"
                ;;
esac
git push -u origin master
