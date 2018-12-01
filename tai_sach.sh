#!/bin/bash
COUNTER=1
echo "First fixed part of web address?"
read URL1
echo "second fixed part of web address?"
read URL2
echo "maximum number of pages?"
read MAX_PAGE
until [ $COUNTER = $MAX_PAGE + 1 ]; do
	wget -q $URL1$COUNTER$URL2
	let COUNTER+=1
done
echo "Done"
