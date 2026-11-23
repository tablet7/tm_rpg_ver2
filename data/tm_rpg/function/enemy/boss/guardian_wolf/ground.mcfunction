#> tm_rpg:enemy/boss/guardian_wolf/ground

# マスターを地面に沿わせる（足元が空なら下りる・めり込んだら上に立つ）。guardian_wolf の行動から毎tick呼ばれる
# @s ＝ マスター
# 通れるブロック ＝ #minecraft:replaceable（リグ定義の "passable" で変えられる）

# 足元が空なら 0.5 下りる
execute at @s if block ~ ~-0.5 ~ #minecraft:replaceable run teleport @s ~ ~-0.5 ~
# めり込んだらブロックの上に立つ
execute at @s unless block ~ ~ ~ #minecraft:replaceable align y run teleport @s ~ ~1 ~
