#!/bin/bash
function rssh() {
	if [ -z "$1" ]
	then
		HOURS="1"
	else
		HOURS=$1
	fi
	ID="$(preserve -np 1 -t 0$HOURS:00:00 | grep -oP '[0-9]{4}')"
	ssh $(preserve -llist | grep $ID | grep -oP 'node[0-9]{3}') -t "cd $(pwd); bash"
}
