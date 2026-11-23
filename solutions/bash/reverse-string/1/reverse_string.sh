#!/usr/bin/env bash

main () {
  while [ "$#" != 0 ]; do
    idx="$1"
    temp=""
    if [ "$idx" != "" ]; then
      charCount=${#idx}
      i=$charCount
      while [ "$i" -gt 0 ]; do
        i=$(( i - 1 ))
        temp+="${idx:i:1}"
      done
    fi
    printf '%s\n' "$temp"
    shift
  done
}

main "$@"