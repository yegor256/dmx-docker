#!/bin/sh

set -x
set -e

if [ -z "${GITHUB_TOKEN}" ]; then
  echo "You have to specify the -e GITHUB_TOKEN=... argument"
  exit
fi
if [ -z "${SECRET}" ]; then
  echo "You have to specify the -e GITHUB_TOKEN=... argument"
  exit
fi

git clone "https://yegor256:${GITHUB_TOKEN}@github.com/yegor256/0dmx"
./0dmx/bin/brigade "--secret=${SECRET}"
