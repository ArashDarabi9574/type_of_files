#!/bin/bash
#First we need to ask our user, what should "code" do.
#Could be a basic "if" code, but at least "choices matter!"
#Basicly evry time, "for-loop" move(mv) a file to ther directory.
#[[ file -b ]] = Shows only type of files by removing "file-name" --> you can check this out by "man file" or "file --help" in terminal.
#[[ mkdir -p ]] = existing directorys now don`t be a problem becuase "-p" --> you can chech this ot bt "man mkdir" or "mkdir --help" in terminal.
#[[ %%, * ]] = This is actually uses for better diretory inter-faces! it`s stand for "remove anything after  ,  ".
echo -n "Do you wanna sort your type of files? (y,n) : "
read usr_answ
if [[ $usr_answ == y ]];then
	for each_type in *; do
    		list_of_type=$(file -b "$each_type" );
        	mkdir -p "${list_of_type%%, *}"
        	mv "$each_type" "${list_of_type%%, *}"
	done
elif [[ $usr_answ == n ]];then
	echo "OK then, if you wanna run this program again, type: ./types.sh "
	exit
else
	echo "Wrong answer"
fi
