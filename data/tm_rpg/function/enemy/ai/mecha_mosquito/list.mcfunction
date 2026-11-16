#> tm_rpg:enemy/ai/mecha_mosquito/list

# 技の選び方「mecha_mosquito」（tag ai_mecha_mosquito）の、技の一覧。enemy/ai/list から呼ばれる（1回目・2回目の両方）
# 技ごとに「番号・重み（使える条件のときだけ）」を入れて enemy/ai/candidate を呼ぶ。使う処理は use
# 自動生成（mc-skill-logic の mcskill.py ai）。数値を直すときは設計図を直して --force で作り直す
# @s ＝ 敵（at @s）。狙うプレイヤーに tag ai_target

# 1: 前方の範囲攻撃（test）（〜3 マス・重み 40・クールタイム 2 秒（ai_cd1））
scoreboard players set #ai_id temp 1
scoreboard players set #ai_w temp 0
execute unless score @s ai_cd1 matches 1.. if entity @a[tag=ai_target,distance=..3,limit=1] run scoreboard players set #ai_w temp 40
execute if score #ai_w temp matches 1.. run function tm_rpg:enemy/ai/candidate

# 2: 吹き飛ばし（〜5 マス・重み 30・クールタイム 5 秒（ai_cd2））
scoreboard players set #ai_id temp 2
scoreboard players set #ai_w temp 0
execute unless score @s ai_cd2 matches 1.. if entity @a[tag=ai_target,distance=..5,limit=1] run scoreboard players set #ai_w temp 30
execute if score #ai_w temp matches 1.. run function tm_rpg:enemy/ai/candidate

# 3: 飛斬（4〜10 マス・重み 40・クールタイム 3 秒（ai_cd3））
scoreboard players set #ai_id temp 3
scoreboard players set #ai_w temp 0
execute unless score @s ai_cd3 matches 1.. if entity @a[tag=ai_target,distance=4..10,limit=1] run scoreboard players set #ai_w temp 40
execute if score #ai_w temp matches 1.. run function tm_rpg:enemy/ai/candidate

# 4: 太いレーザー（8〜20 マス・重み 30・クールタイム 4 秒（ai_cd4））
scoreboard players set #ai_id temp 4
scoreboard players set #ai_w temp 0
execute unless score @s ai_cd4 matches 1.. if entity @a[tag=ai_target,distance=8..20,limit=1] run scoreboard players set #ai_w temp 30
execute if score #ai_w temp matches 1.. run function tm_rpg:enemy/ai/candidate
