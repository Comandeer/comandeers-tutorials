#! /usr/bin/env bash
TYPE=bs
if [[ $1 != "" ]]; then
  TYPE=$1
fi

cd build/$TYPE
node build
