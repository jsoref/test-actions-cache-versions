#!/bin/sh

usage() {
    echo "$0 -d <prime-numbers | numbers>" >&2
    exit 1
}

flag="$1"

[ "$flag" = "-d" ] || usage

shift
kind="$1"

case "$kind" in
    prime-numbers)
        (
            for a in 2 3 5 7 11 13 17 19 23 29; do
                echo $a
            done
        ) > "$kind"
    ;;
    numbers)
        (
            for a in $(seq 10); do
                echo $a
            done
        ) > "$kind"
    ;;
    *)
        usage
    ;;
esac
