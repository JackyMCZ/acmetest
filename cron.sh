#!/usr/bin/env sh


if [ -z "$1" ] ; then
  echo "Usage: plat"
  return 1
fi

plat="$1"

export  TestingDomain=test$plat.acme.sh
export  TestingAltDomains=test${plat}2.acme.sh


./runplat.sh  "$plat"


