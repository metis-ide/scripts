#!/bin/bash

#git clone https://github.com/metis-ide/scripts.git .

CWD="`dirname $0`"
cd "${CWD}"
CWD="`pwd`"

if [ -d ".git" ]
then
  git pull
fi




