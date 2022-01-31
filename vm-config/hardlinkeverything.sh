#!/bin/bash

for f in $(ls); do
	if [[ "$f" != "${0#./}" ]]; then
		ln -v $(realpath $f) $1
	fi
done
