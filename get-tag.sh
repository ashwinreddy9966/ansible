#!/bin/bash
C1=$(git tag -l | awk -F . '{print $1}' |sort -n  |uniq  | tail -1)

C2=$(git tag -l | grep ^${C1} | awk -F . '{print $2}' | sort -n | uniq |tail -1)

C3=$(git tag -l | grep ^${C1}\.${C2}  | awk -F . '{print $3}' |sort -n | uniq | tail -1)

version="$C1.$C2.$C3"
echo -e "Available latest version is $version"
