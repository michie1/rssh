#!/bin/bash
function rssh() {
	ID="$(preserve -np 1 -t 01:00:00 | grep -oP '[0-9]{4}')"
	ssh $(preserve -llist | grep $ID | grep -oP 'node[0-9]{3}') -t "cd $(pwd); bash"
}
