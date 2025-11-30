#!/usr/bin/python3
# SPDX-FileCopyrightText: 2025 ikki yamanaka
# SPDX-License-Identifier: BSD-3-Clause

import sys
import datetime

def progress_birthday():

    
    
    birthday_date = input("誕生日を「年-月-日」で入力してください (ex: 2005-12-16): ")
    
    try:
        birthday = datetime.date.fromisoformat(birthday_date)
        
        today = datetime.date.today()   
        if birthday > today:
            print(" エラー: 未来の日付は入力できません。")
            return

        difference = today - birthday
        
        days_progress = difference.days
        
        print(f" {days_progress}")

    except ValueError:
        print(" エラー: 日付の形式が正しくないか、無効な日付です。")

if __name__ == "__main__":
    progress_birthday()
