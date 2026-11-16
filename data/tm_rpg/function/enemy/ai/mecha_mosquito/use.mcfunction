#> tm_rpg:enemy/ai/mecha_mosquito/use

# 技の選び方「mecha_mosquito」（tag ai_mecha_mosquito）で、選んだ技（#ai_pick temp）を使う。enemy/ai/use から呼ばれる
# 技を使い、その技のクールタイム（ai_cdN）と、次に技を使うまでの待ち時間（ai_cool）を入れる
# 自動生成（mc-skill-logic の mcskill.py ai）。数値を直すときは設計図を直して --force で作り直す
# @s ＝ 敵（at @s）。狙うプレイヤーに tag ai_target

# 1: 前方の範囲攻撃（test）（クールタイム 2 秒（ai_cd1））。足元からプレイヤーの足元の向き
execute if score #ai_pick temp matches 1 facing entity @a[tag=ai_target,limit=1] feet run function tm_rpg:enemy/skill/warn_test
execute if score #ai_pick temp matches 1 run scoreboard players set @s ai_cd1 40

# 2: 吹き飛ばし（クールタイム 5 秒（ai_cd2））
execute if score #ai_pick temp matches 2 run function tm_rpg:enemy/skill/warn_test_push
execute if score #ai_pick temp matches 2 run scoreboard players set @s ai_cd2 100

# 3: 飛斬（クールタイム 3 秒（ai_cd3））。敵の目からプレイヤーの目を狙う
execute if score #ai_pick temp matches 3 anchored eyes facing entity @a[tag=ai_target,limit=1] eyes anchored feet run function tm_rpg:enemy/skill/warn_fly_slash
execute if score #ai_pick temp matches 3 run scoreboard players set @s ai_cd3 60

# 4: 太いレーザー（クールタイム 4 秒（ai_cd4））。敵の目からプレイヤーの目を狙う
execute if score #ai_pick temp matches 4 anchored eyes facing entity @a[tag=ai_target,limit=1] eyes anchored feet run function tm_rpg:enemy/skill/warn_test_laser
execute if score #ai_pick temp matches 4 run scoreboard players set @s ai_cd4 80

# 次に技を使うまで 2 秒（予兆の時間もふくむ）
scoreboard players set @s ai_cool 40
