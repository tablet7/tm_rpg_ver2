#> no_trample_lite:scan

# 足元の4隅（当たり判定の幅0.6 → ±0.3）を、0.5〜3.5ブロック下まで調べる。no_trample_lite:tick から、対象のプレイヤーとして実行される
# 農地が見つかった時点で slow_falling を20tick(1秒)付けて終了する
execute positioned ~0.3 ~-0.5 ~0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~0.3 ~-0.5 ~-0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~-0.3 ~-0.5 ~0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~-0.3 ~-0.5 ~-0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~0.3 ~-1.5 ~0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~0.3 ~-1.5 ~-0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~-0.3 ~-1.5 ~0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~-0.3 ~-1.5 ~-0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~0.3 ~-2.5 ~0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~0.3 ~-2.5 ~-0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~-0.3 ~-2.5 ~0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~-0.3 ~-2.5 ~-0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~0.3 ~-3.5 ~0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~0.3 ~-3.5 ~-0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~-0.3 ~-3.5 ~0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
execute positioned ~-0.3 ~-3.5 ~-0.3 if block ~ ~ ~ minecraft:farmland run return run effect give @s minecraft:slow_falling 1 0 true
