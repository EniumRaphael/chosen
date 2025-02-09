#!/bin/env sh

echo "Il a oublier de lock sa session, que faire ?"
echo -e "\t0) TLock"
echo -e "\t1) explilock"
echo -e "\t2) bananalock"
echo -e "\t3) cacafire"
echo -e "\t4) cacaclock"
read chosen < /dev/tty

if [ $chosen -eq 1 ]; then
	cacafire &
	curl -L s.42l.fr/explilock | bash
elif [ $chosen -eq 2 ]; then
	cacafire &
	curl -L s.42l.fr/bananalock | bash
elif [ $chosen -eq 3 ]; then
	cacafire &
elif [ $chosen -eq 4 ]; then
	cacaclock &
else
	cacafire &
	curl -L s.42l.fr/Tlock | bash
fi
