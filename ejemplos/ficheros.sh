#!/bin/bash
for f in $(find /etc/rc?.d -name "s*")
do
	echo $f
	cat $f
	echo $f | basename $f
	
done
