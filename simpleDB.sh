#! /bin/bash

db_set () {
    echo "$1,$2" >> database
}

db_get () {
    grep "^$1," database | tail -n 1 | sed -e "s/^$1,//"
}

export -f db_set
export -f db_get

