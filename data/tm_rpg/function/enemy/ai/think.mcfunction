#> tm_rpg:enemy/ai/think

# 敵の技を選ぶ仕組み（共通）の毎 tick の処理。enemy/main から、tag enemy_ai の敵ごとに呼ばれる
# 技のクールタイム（ai_cd1〜4）と、次に技を使うまでの待ち時間（ai_cool）を減らし、待ち時間が 0 なら技を選んで使う
# 選び方: いちばん近いプレイヤー（32 マス以内）を狙い、その距離とクールタイムで使える技だけを集め、重みでランダムに1つ選ぶ
#   1回目（#ai_pass 1）… 使える技の重みを足す（enemy/ai/list → enemy/ai/<種類>/list → enemy/ai/candidate）
#   2回目（#ai_pass 2）… 0〜合計−1 の乱数で1つ選ぶ（#ai_pick ＝ 選んだ技の番号）
#   選んだら enemy/ai/use → enemy/ai/<種類>/use が、その技を使い、クールタイムと待ち時間を入れる
# 敵ごとの技の一覧は enemy/ai/<種類>/list と use に書く（例: enemy/ai/test/）。種類は tag ai_<種類> で選ぶ
# @s ＝ 敵（at @s）

# 技ごとのクールタイム（どの技がどれを使うかは、種類ごとの list・use で決める）
scoreboard players remove @s[scores={ai_cd1=1..}] ai_cd1 1
scoreboard players remove @s[scores={ai_cd2=1..}] ai_cd2 1
scoreboard players remove @s[scores={ai_cd3=1..}] ai_cd3 1
scoreboard players remove @s[scores={ai_cd4=1..}] ai_cd4 1

# 次に技を使うまでの待ち時間
execute if score @s ai_cool matches 1.. run return run scoreboard players remove @s ai_cool 1

# 狙うプレイヤー（いちばん近い。いなければ 10 tick 後にもう一度）
tag @p[tag=mob,gamemode=!spectator,distance=..32] add ai_target
execute unless entity @a[tag=ai_target,limit=1] run return run scoreboard players set @s ai_cool 10

# 1回目: 使える技の重みを足す
scoreboard players set #ai_sum temp 0
scoreboard players set #ai_pass temp 1
function tm_rpg:enemy/ai/list

# 使える技が無ければ、10 tick 後にもう一度
execute if score #ai_sum temp matches ..0 run scoreboard players set @s ai_cool 10
execute if score #ai_sum temp matches ..0 run return run tag @a[tag=ai_target] remove ai_target

# 2回目: 重みでランダムに1つ選ぶ（random value の範囲を変えずに %= で 0〜合計−1 にする）
execute store result score #ai_roll temp run random value 0..2147483646
scoreboard players operation #ai_roll temp %= #ai_sum temp
scoreboard players set #ai_pick temp 0
scoreboard players set #ai_pass temp 2
function tm_rpg:enemy/ai/list

# 選んだ技を使う（クールタイムと待ち時間も入れる）
function tm_rpg:enemy/ai/use

tag @a[tag=ai_target] remove ai_target
