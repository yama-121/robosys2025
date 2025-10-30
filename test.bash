#!/bin/bash
#SPDX 


ng () {
	echo ${1}行目が違うよ
        res=1
}

res=0
a=上田
[ "$a" = 神 ] || ng "$LINENO"

[ "$a" = 上田 ] || ng "$LINENO"

exit $res
