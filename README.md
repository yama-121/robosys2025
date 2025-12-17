# robosys2025

# 経過日数
入力された日から何日経ったかを出力します。

# インストール
```
$ git clone https://github.com/yama-121/robosys2025.git
$ cd robosys2025
$ chmod +x count
```

# 使い方
このプログラムは、標準入力から日付を受け取り、標準出力に経過日数を返します。

入力形式: YYYY-MM-DD形式の日付文字列 (例: 2000-01-01)
出力形式: 経過した日数

未来の日付を指定することはできません。
日付の月や日が1桁の場合でも、07のように2桁で入力する必要があります。
例
```
'$ echo "2000-01-01" | ./count'
```
9475


# テストの結果
[test](https://github.com/yama-121/robosys2025/actions/workflows/birthdaytest.yml)

# 必要なソフトウェア
Python 3.13.5

# テスト環境
Ubuntu 22.04.5
git version 2.34.1

# 権利関係
- このソフトウェアパッケージは、3条項BSDライセンスの下，再頒布および使用が許可されます。
- このパッケージは，Ryuichi Ueda由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ [ryuichiueda/my_slides robosys_2025]](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)

- © 2025 ikki yamanaka
