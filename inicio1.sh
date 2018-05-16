#!/bin/bash
# My comment
#HELLO="Hello, world!"
#echo $HELLO
#world=("Shell Script" "Bash" "GNU" "Linux" "Debian")
# echo ${#world[@]} #<-- print count number of elements the array
# echo ${world[*]} #<-- print all elements of the array
#echo ${world[@]:2} #<-- print all ellements from second element

MyFunction(){
	local Hello="Hello, world!"
	#echo "I write in $2 $1"
	echo "I have passed $# parameters"
	echo $Hello
	return
	echo "Other thing"
}

#MyFunction $@

#declare -r MyConstant="This is constant" #<-- Always have the same value

#echo $MyConstant

#Access directories
#cd MyDirectory/
#ls

<<Comment
MyFunction(){
	VARIABLE=$1;
	if test "$VARIABLE" -gt 10
		then
		echo "is greater than 10"
	elif test "$VARIABLE" -eq 10
		then
		echo "is equal to 10"
	else
		echo "is less than 10"
	fi
}
Comment

MyFunction(){
	case $1 in
		10) echo "is 10";;
		9) echo "is 9";;
		7|8) echo "is 7 or 8";;
		*) echo "is less than 6 or greater than 10";;
	esac
}

MyFunction $1











