#!/bin/bash
echo "content-type: text/html"
echo
echo "You have send the form"
read all

IFS='&'
echo "<ul>"
for i in $all; do
	camp=$(echo $i | cut -d = -f1)

	[[ "$camp" = "likethis" ]] && camp="like"
	var=$(echo $i | cut -d = -f2)
	echo "<li>$camp: <b>$var</b></li>"
done
echo "</ul>"