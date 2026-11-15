#> tm_rpg:enemy/ai/test/list

# テスト用の技の選び方（tag ai_test）の、技の一覧。enemy/ai/list から呼ばれる（1回目・2回目の両方）
# 技ごとに「番号・重み（使える条件のときだけ）」を入れて enemy/ai/candidate を呼ぶ。使う処理は enemy/ai/test/use
# 条件の書き方: 狙うプレイヤー（tag ai_target）との距離は @a[tag=ai_target,distance=...,limit=1]、クールタイムは unless score @s ai_cdN matches 1..
# @s ＝ 敵（at @s）

# 1: 吹き飛ばし（5 マス以内・重み 50・クールタイム ai_cd1）
scoreboard players set #ai_id temp 1
scoreboard players set #ai_w temp 0
execute unless score @s ai_cd1 matches 1.. if entity @a[tag=ai_target,distance=..5,limit=1] run scoreboard players set #ai_w temp 50
execute if score #ai_w temp matches 1.. run function tm_rpg:enemy/ai/candidate

# 2: 太いレーザー（6〜20 マス・重み 30・クールタイム ai_cd2）
scoreboard players set #ai_id temp 2
scoreboard players set #ai_w temp 0
execute unless score @s ai_cd2 matches 1.. if entity @a[tag=ai_target,distance=6..20,limit=1] run scoreboard players set #ai_w temp 30
execute if score #ai_w temp matches 1.. run function tm_rpg:enemy/ai/candidate

# 3: 剣の雨（4〜14 マス・重み 20・クールタイム ai_cd3）
scoreboard players set #ai_id temp 3
scoreboard players set #ai_w temp 0
execute unless score @s ai_cd3 matches 1.. if entity @a[tag=ai_target,distance=4..14,limit=1] run scoreboard players set #ai_w temp 20
execute if score #ai_w temp matches 1.. run function tm_rpg:enemy/ai/candidate

# 4: 剣の一斉射撃（10〜26 マス・重み 20・クールタイム ai_cd4）
scoreboard players set #ai_id temp 4
scoreboard players set #ai_w temp 0
execute unless score @s ai_cd4 matches 1.. if entity @a[tag=ai_target,distance=10..26,limit=1] run scoreboard players set #ai_w temp 20
execute if score #ai_w temp matches 1.. run function tm_rpg:enemy/ai/candidate

# 5: バックジャンプ（3 マス以内・重み 20・クールタイムなし。近づかれたら離れる）
scoreboard players set #ai_id temp 5
scoreboard players set #ai_w temp 0
execute if entity @a[tag=ai_target,distance=..3,limit=1] run scoreboard players set #ai_w temp 20
execute if score #ai_w temp matches 1.. run function tm_rpg:enemy/ai/candidate
