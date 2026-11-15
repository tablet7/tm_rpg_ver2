#> tm_rpg:enemy/skill/push_burst/after

# 吹き飛ばしの爆発の直後の片付け。エンチャント tm_rpg:push_burst の tick 効果（explode のあとの run_function）から呼ばれる
# 爆発を起こした防具立てを消し（爆発は1回だけ）、ほかに爆発待ちの防具立てが無ければ、敵の「爆発で吹き飛ばない」属性を外す
# （同じ tick に2体の敵が使ったとき、1つ目の爆発のあとで外すと、2つ目の爆発で敵が吹き飛ぶため）
# @s ＝ 爆発を起こした防具立て

# 爆発を起こす防具立て以外（試しに棒を持ったプレイヤーなど）は消さない
execute unless entity @s[tag=push_burst_helper] run return run function tm_rpg:enemy/skill/push_burst/unguard

tag @s remove push_burst_helper
kill @s
execute unless entity @e[type=minecraft:armor_stand,tag=push_burst_helper,limit=1] run function tm_rpg:enemy/skill/push_burst/unguard
