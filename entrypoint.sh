#!/usr/bin/env bash
echo "Building Project"
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
pros make --project=$1
