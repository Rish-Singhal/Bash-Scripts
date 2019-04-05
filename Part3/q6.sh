#!/bin/bash
read new
ff=$(echo "$new" | tr '(' '\n' | tr ')' '\n' |tr ' ' '\n'| grep -v '^$'|tr '\n' ' ')
echo  "( $ff)"
