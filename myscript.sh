#!/bin/bash

<<Block
cd MyDirectory/
for runlevel in 0 1 2 3 4
	do
		mkdir rc${runlevel}.d
		echo $runlevel
	done
Block

<<Block
_INPUT_STRING="Hello"
while [[ "$_INPUT_STRING" != "bye" ]]
	do
		echo "Do you wish stay here?"
		read _INPUT_STRING
		if [[ $_INPUT_STRING = 'bye' ]]; 
			then	echo "Yo say bye"
		else
			echo "Do you still want to stay here?"
		fi
done
Block

<<block
_INPUT_STRING="Hello"
while :
	do
		echo "Do you wish stay here?"
		read _INPUT_STRING
		if [[ $_INPUT_STRING != 'bye' ]]; 
			then	continue
		else
			break
		fi
	done
block

TestFunction(){
	shift
	echo "The parameters are : $@"
}

TestFunction $@


















