#!/bin/bash

fw_depends urweb

urweb -db "dbname=hello_world user=benchmarkdbuser password=benchmarkdbpass host=${DBHOST}" bench

MAX_THREADS=$((2 * $MAX_THREADS))
./bench.exe -q -k -t ${MAX_THREADS} &
