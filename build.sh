#! /usr/bin/env bash
TYPE=mdl
if [[ $1 != "" ]]; then
  TYPE=$1
fi

cd build/$TYPE
node build
