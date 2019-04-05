#!/bin/bash
cat to_replace.txt |xargs -n 1| xargs -I{} mv rename/{}.txt rename/{}{}.txt
