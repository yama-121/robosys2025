#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 ikki yamanaka
# SPDX-License-Identifier: BSD-3-Clause 

NG_COUNT=0

ng () {
    echo "${1}行目"
    NG_COUNT=$((NG_COUNT + 1))
}

FUTURE_DATE="2099-12-31"
OUT=$(echo "${FUTURE_DATE}" | ./count | tr -d ' ' | tr -d '\n')
[ "${OUT}" = "error" ] || ng "$LINENO"

OUT=$(echo "2024/01/01" | ./count | tr -d ' ' | tr -d '\n')
[ "${OUT}" = "error" ] || ng "$LINENO"

OUT=$(echo "2024-02-30" | ./count | tr -d ' ' | tr -d '\n')
[ "${OUT}" = "error" ] || ng "$LINENO"

if [ "${NG_COUNT}" -eq 0 ]; then
    echo "OK"
    exit 0
else
    echo "NG: ${NG_COUNT}件の失敗"
    exit 1
fi

