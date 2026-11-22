#> tm_rpg:enemy/boss/guardian_wolf/hook/reward

# ボス「ガーディアンウルフ」の報酬の入れ物（中身は未定。決まったらここに書く）。hook/death から、倒したときだけ呼ばれる
# 書き方の例（近くで戦った人全員に loot table を渡す）:
#   execute as @a[tag=mob,gamemode=!spectator,distance=..48] run loot give @s loot <loot table の id>
# @s ＝ マスター（at @s）
