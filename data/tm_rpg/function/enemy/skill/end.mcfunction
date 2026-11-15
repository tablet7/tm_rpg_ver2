#> tm_rpg:enemy/skill/end

# 敵がプレイヤー用のスキルを使い終わったあとの片付け。enemy/skill/<スキル> の最後に呼ばれる
# #skill_side temp を 0（プレイヤー側）に戻す
# @s ＝ スキルを使った敵

scoreboard players set #skill_side temp 0
