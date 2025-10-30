#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 ikki yamanaka
# SPDX-License-Identifier: BSD-3-Clause 


ng () {
	echo ${1}行目が違うよ
        res=1
}

res=0

out=$(seq 5 | ./plus)
++ seq 5
++ ./plus

[ "${out}" = 15 ] || ng "$LINENO"
+'[' 15 = 15']'

out=$(echo あ| ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
+ '[' 0 = 0 ']'
+ echo OK
OK
exit $res
+ exit 0
