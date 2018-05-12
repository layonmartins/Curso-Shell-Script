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
cd MyDirectory/
ls
