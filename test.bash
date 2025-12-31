#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 ikki yamanaka
# SPDX-License-Identifier: BSD-3-Clause 

NG_COUNT=0

ng () {
    echo "${1}行目"
    NG_COUNT=$((NG_COUNT + 1))
}

echo "2000-01-01" | ./count > /dev/null 2>&1
[ $? -eq 0 ] || ng "$LINENO"

echo "2099-12-31" | ./count > /dev/null 2>&1
[ $? -eq 1 ] || ng "$LINENO"

echo "2024/01/01" | ./count > /dev/null 2>&1
[ $? -eq 1 ] || ng "$LINENO"

if [ "${NG_COUNT}" -eq 0 ]; then
    echo "0"
    exit 0
else
    echo "${NG_COUNT}"
    exit 1
fi
