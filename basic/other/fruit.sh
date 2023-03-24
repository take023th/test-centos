#! /bin/bash
fruits=('banana' 'apple' 'grape') # 配列の作成
fruits[3]='lemon'
unset fruits[2]
echo ${fruits[@]} # 値すべてを表示
echo ${fruits[0]} # インデックス0の要素を表示
echo ${!fruits[@]} # インデックスを表示
echo ${#fruits[@]} # 配列の要素数を表示
