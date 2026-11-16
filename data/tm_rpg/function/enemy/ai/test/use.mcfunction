#> tm_rpg:enemy/ai/test/use

# テスト用の技の選び方（tag ai_test）で、選んだ技（#ai_pick temp）を使う。enemy/ai/use から呼ばれる
# 技を使い、その技のクールタイム（ai_cdN）と、次に技を使うまでの待ち時間（ai_cool）を入れる
# 攻撃の技（ダメージを与える技）は、すべて予兆付きの入口（enemy/skill/warn_<スキル>）を使う
# @s ＝ 敵（at @s）。狙うプレイヤーに tag ai_target

# 1: 吹き飛ばし（予兆の輪 1 秒）。クールタイム 5 秒
execute if score #ai_pick temp matches 1 run function tm_rpg:enemy/skill/warn_test_push
execute if score #ai_pick temp matches 1 run scoreboard players set @s ai_cd1 100

# 2: 太いレーザー（予兆 1.5 秒）。クールタイム 4 秒
# 敵の目の位置からプレイヤーの目を狙う（レーザーは目の高さから撃つので、足元から狙うと目の高さぶん上を通る）。anchored feet で戻す
execute if score #ai_pick temp matches 2 anchored eyes facing entity @a[tag=ai_target,limit=1] eyes anchored feet run function tm_rpg:enemy/skill/warn_test_laser
execute if score #ai_pick temp matches 2 run scoreboard players set @s ai_cd2 80

# 3: 剣の雨（予兆 1.5 秒）。クールタイム 6 秒
execute if score #ai_pick temp matches 3 facing entity @a[tag=ai_target,limit=1] feet run function tm_rpg:enemy/skill/warn_test_sword_rain
execute if score #ai_pick temp matches 3 run scoreboard players set @s ai_cd3 120

# 4: 剣の一斉射撃（予兆 1.5 秒）。クールタイム 8 秒
execute if score #ai_pick temp matches 4 facing entity @a[tag=ai_target,limit=1] feet run function tm_rpg:enemy/skill/warn_test_sword_volley
execute if score #ai_pick temp matches 4 run scoreboard players set @s ai_cd4 160

# 5: バックジャンプ（狙うプレイヤーから離れる向き）
execute if score #ai_pick temp matches 5 facing entity @a[tag=ai_target,limit=1] feet run function tm_rpg:enemy/skill/move/back_jump

# 次に技を使うまで 2 秒（予兆の時間もふくむ）
scoreboard players set @s ai_cool 40
