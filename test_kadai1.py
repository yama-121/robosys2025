#!/usr/bin/python3 -xv
# SPDX-FileCopyrightText: 2025 ikki yamanaka
# SPDX-License-Identifier: BSD-3-Clause

import unittest
from datetime import date
from kadai1 import progress_birthday_date

class TestProgressBirthdayDate(unittest.TestCase):

    def test_past_date(self):
        pass

    def test_invalid_format(self):
        with self.assertRaisesRegex(ValueError, "日付の形式が正しくありません"):
            progress_birthday_date("2000/01/01")

    def test_future_date(self):
        with self.assertRaisesRegex(ValueError, "未来の日付は入力できません"):
            progress_birthday_date("2030-01-01")

if __name__ == '__main__':
    unittest.main()
