#! /usr/bin/env bash

myAray=(i3 fish bash)
i=0
echo $myAray|fzf|while [ $i -le 3 ] ; do
	if [ $myAray[$i] = i3];then
		vim ~.config/i3/config
	fi
done
