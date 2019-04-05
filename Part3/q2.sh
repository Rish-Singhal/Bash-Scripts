#!/bin/bash
HISTFILE=~/.bash_history
set -o history 
  history | sort -k2 | awk '{print $2}'|uniq -c|awk '{print $2 " " $1}'|sort -nr -k2
