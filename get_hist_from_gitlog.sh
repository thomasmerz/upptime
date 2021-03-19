#!/bin/bash

ALLSERVICES="$(ack name: .upptimerc.yml | grep -vE '^#|color-scheme|robots|Upptime'|awk {'print $3'}|xargs)"

if [ -z "$1" ]; then
  echo -e "\nUsage:\033[1;33m\t`basename $0` [1-n] = count of how much occurrences ['service(s)']\n \033[0m"
  echo -e "$(echo $ALLSERVICES|tr ' ' '\n')\n"
  echo "ENTER to continue"; read -t 3; echo
fi

HEADCOUNT="${1:-1}"
SERVICES="${2:-$ALLSERVICES}"

for s in $SERVICES;
  do git log|ack "$s"|head -$HEADCOUNT
  [ "$HEADCOUNT" != 1 ] && { read -t 1; echo; }
  done

