#!/bin/bash
BASE_OUTPUT=$(lpass ls|grep $1|tr -d '['| tr -d ']'|awk '{print $NF}')
OUTPUT="{\"id\": \"$BASE_OUTPUT\"}"
echo $OUTPUT
