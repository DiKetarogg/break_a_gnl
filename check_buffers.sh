#!/bin/bash
for ((i=1;i<=2000;++i))
	do
		make BUFFER=$i re
		./check.sh
	done
