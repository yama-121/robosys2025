#!/usr/bin/python3
# SPDX-FileCopyrightText: 2025 ikki yamanaka
# SPDX-License-Identifier: BSD-3-Clause

import sys
import datetime

def progress_birthday_date(birthday_date: str):

    try:
        birthday = datetime.date.fromisoformat(birthday_date)
    except ValueError:
        raise ValueError("日付の形式が正しくありません。")

    today = datetime.date.today()
    
    if birthday > today:
        raise ValueError("エラー: 未来の日付は入力できません。")

    difference = today - birthday
    return difference.days

def progress_birthday():

    birthday_date = input("誕生日を「年-月-日」で入力してください (ex: 2005-12-16): ")

    try:
        days_progress = progress_birthday_date(birthday_date)
        print(f" {days_progress}")

    except ValueError as e:
        print(f" {e}")

if __name__ == "__main__":
    progress_birthday()
