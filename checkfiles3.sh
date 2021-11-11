#!/bin/bash

echo "Number of rplraw files:"
find . -name "rplraw*.hkl" | grep -v -e mountains | sort > cfraw.txt
wc -l cfraw.txt
echo "Number of rpllfp files:"
find . -name "rpllfp *.hkl" | grep -v -e mountains | sort > cflfp.txt
wc -l cflfp.txt
echo "Number of rplhighpass files:"
find . -name "rplhighpass *.hkl" | grep -v -e mountains | sort > cfhps.txt
wc -l cfhps.txt
echo "Number of channels:"
find . -name "channel*" | grep -v -e eye -e mountain | sort > chs16.txt
wc -l chs16.txt

