#> tm_workbench:kaji/kzc

# 改造できる回数 #kzc kaji_tmp を、強化回数 #kk と改造した回数 #kz から計算する
# kaji/fake・kaji/kyouka/success・kaji/kaizou/success から。lore の 0 行目「Lv: 11  (2)」の ( ) にもこの数を出す
# 改造できる回数 ＝ 強化回数 ÷ 10 − 改造した回数（昔の物は kaizou の意味が違うのでマイナスになることがある。0 より下は 0）

scoreboard players operation #kzc kaji_tmp = #kk kaji_tmp
scoreboard players operation #kzc kaji_tmp /= #10 kaji_tmp
scoreboard players operation #kzc kaji_tmp -= #kz kaji_tmp
execute if score #kzc kaji_tmp matches ..-1 run scoreboard players set #kzc kaji_tmp 0
