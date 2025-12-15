#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 ikki yamanaka
# SPDX-License-Identifier: BSD-3-Clause 

NG_COUNT=0

# エラー処理関数
ng () {
    echo "${1}行目"
    NG_COUNT=$((NG_COUNT + 1))
}

# --- 1. 異常系テスト (未来の日付) ---
FUTURE_DATE="2099-12-31"
OUT=$(echo "${FUTURE_DATE}" | ./count | tr -d ' ' | tr -d '\n')
[ "${OUT}" = "error" ] || ng "$LINENO"

# --- 2. 異常系テスト (不正な形式) ---
OUT=$(echo "2024/01/01" | ./count | tr -d ' ' | tr -d '\n')
[ "${OUT}" = "error" ] || ng "$LINENO"

# --- 3. 異常系テスト (存在しない日付) ---
OUT=$(echo "2024-02-30" | ./count | tr -d ' ' | tr -d '\n')
[ "${OUT}" = "error" ] || ng "$LINENO"

# --- 最終結果 ---
if [ "${NG_COUNT}" -eq 0 ]; then
    echo "OK"
    exit 0
else
    echo "NG: ${NG_COUNT}件の失敗"
    exit 1
fi
