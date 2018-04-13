#! /bin/bash
echo "Input Comand"
read com
$com > /dev/null 2> &1
