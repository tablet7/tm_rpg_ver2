#> tm_rpg:system/item_mod/lock/timeout

# 改造台を開いたまま 60 秒（1200 tick）視線が動かなかったときの処理。lock/check_user から呼ばれる
# 中身（埋め草の岩盤以外）を使っている人に渡し、鍵を外して、改造台を壊して置き直す（壊すと開いている画面が閉じる）
# 埋め草の岩盤は、次の item_mod/kaizoudai_main が入れ直す
# @s ＝ 改造台の marker（ドロッパーの中心）、使っている人 ＝ tag kaizou_this

# 中身をスロットごとにアイテムとして出す（item replace ... contents で、出したアイテムの中身を改造台のスロットの物にする）
execute if items block ~ ~ ~ container.0 * unless items block ~ ~ ~ container.0 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["kaizou_return","kaizou_return_new"]}
item replace entity @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] contents from block ~ ~ ~ container.0
tag @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] remove kaizou_return_new
execute if items block ~ ~ ~ container.1 * unless items block ~ ~ ~ container.1 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["kaizou_return","kaizou_return_new"]}
item replace entity @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] contents from block ~ ~ ~ container.1
tag @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] remove kaizou_return_new
execute if items block ~ ~ ~ container.2 * unless items block ~ ~ ~ container.2 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["kaizou_return","kaizou_return_new"]}
item replace entity @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] contents from block ~ ~ ~ container.2
tag @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] remove kaizou_return_new
execute if items block ~ ~ ~ container.3 * unless items block ~ ~ ~ container.3 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["kaizou_return","kaizou_return_new"]}
item replace entity @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] contents from block ~ ~ ~ container.3
tag @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] remove kaizou_return_new
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["kaizou_return","kaizou_return_new"]}
item replace entity @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] contents from block ~ ~ ~ container.4
tag @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] remove kaizou_return_new
execute if items block ~ ~ ~ container.5 * unless items block ~ ~ ~ container.5 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["kaizou_return","kaizou_return_new"]}
item replace entity @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] contents from block ~ ~ ~ container.5
tag @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] remove kaizou_return_new
execute if items block ~ ~ ~ container.6 * unless items block ~ ~ ~ container.6 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["kaizou_return","kaizou_return_new"]}
item replace entity @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] contents from block ~ ~ ~ container.6
tag @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] remove kaizou_return_new
execute if items block ~ ~ ~ container.7 * unless items block ~ ~ ~ container.7 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["kaizou_return","kaizou_return_new"]}
item replace entity @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] contents from block ~ ~ ~ container.7
tag @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] remove kaizou_return_new
execute if items block ~ ~ ~ container.8 * unless items block ~ ~ ~ container.8 minecraft:bedrock run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["kaizou_return","kaizou_return_new"]}
item replace entity @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] contents from block ~ ~ ~ container.8
tag @e[type=minecraft:item,tag=kaizou_return_new,distance=..0.1,limit=1] remove kaizou_return_new

# 出したアイテムを使っている人の足元へ送り、その人だけが拾えるようにする
execute as @e[type=minecraft:item,tag=kaizou_return,distance=..0.1] run function tm_rpg:system/item_mod/lock/return_item

# 中身を消してから壊して置き直す（向きはそのまま。中身を消しておくので、壊しても何も落ちない）
data remove block ~ ~ ~ Items
scoreboard players set #kaizou_facing temp 0
execute if block ~ ~ ~ minecraft:dropper[facing=up] run scoreboard players set #kaizou_facing temp 1
execute if block ~ ~ ~ minecraft:dropper[facing=north] run scoreboard players set #kaizou_facing temp 2
execute if block ~ ~ ~ minecraft:dropper[facing=south] run scoreboard players set #kaizou_facing temp 3
execute if block ~ ~ ~ minecraft:dropper[facing=west] run scoreboard players set #kaizou_facing temp 4
execute if block ~ ~ ~ minecraft:dropper[facing=east] run scoreboard players set #kaizou_facing temp 5
setblock ~ ~ ~ minecraft:air
execute if score #kaizou_facing temp matches 0 run setblock ~ ~ ~ minecraft:dropper[facing=down]
execute if score #kaizou_facing temp matches 1 run setblock ~ ~ ~ minecraft:dropper[facing=up]
execute if score #kaizou_facing temp matches 2 run setblock ~ ~ ~ minecraft:dropper[facing=north]
execute if score #kaizou_facing temp matches 3 run setblock ~ ~ ~ minecraft:dropper[facing=south]
execute if score #kaizou_facing temp matches 4 run setblock ~ ~ ~ minecraft:dropper[facing=west]
execute if score #kaizou_facing temp matches 5 run setblock ~ ~ ~ minecraft:dropper[facing=east]

# 置き直したドロッパーには鍵が無いので、marker の印とスコアだけ消す
function tm_rpg:system/item_mod/lock/unlock

tellraw @a[tag=kaizou_this,limit=1] {"text":"改造台を60秒以上開いたままだったので、閉じて中身を返しました","color":"yellow"}
