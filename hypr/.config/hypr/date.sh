#!/bin/bash
export LC_TIME=ja_JP.UTF-8
dot() { printf "<span foreground='%s' size='smaller'>\U000f0130</span>" "$1"; }
echo "$(date +%a) $(dot '#f2b8f0') $(date +%-d) $(dot '#bbf0fe') $(date +%-m)月 $(dot '#a79bcd') $(date +%Y)"
