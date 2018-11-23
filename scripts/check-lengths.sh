#!/bin/sh
MIN=2
MAX=10
for DICT in `ls dicts/*.txt`; do
    if grep -qEv "^(.){$MIN,$MAX}$" $DICT; then
        echo "Illegal lengths in $DICT, not in [$MIN,$MAX]"
        exit
    fi
done
echo "All good!"
