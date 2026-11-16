#> tm_rpg:enemy/skill/end

# 敵がプレイヤー用のスキルを使い終わったあとの片付け。enemy/skill/<スキル> の最後に呼ばれる
# #skill_side temp を 0（プレイヤー側）に戻す
# 本体（fire）が #skill_lock temp（技を出し続ける tick）を入れていたら、そのあいだ敵を自分から動けなくする（enemy/skill/lock）
# @s ＝ スキルを使った敵

scoreboard players set #skill_side temp 0
execute if score #skill_lock temp matches 1.. run function tm_rpg:enemy/skill/lock
