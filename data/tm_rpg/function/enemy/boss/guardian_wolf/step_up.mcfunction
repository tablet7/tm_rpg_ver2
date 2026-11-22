#> tm_rpg:enemy/boss/guardian_wolf/step_up

# 前へ進むtickに、1段の段差を登る。guardian_wolf の歩き・前進から呼ばれる（止まっているときは呼ばない。段差の前で上下しないように）
# @s ＝ マスター

# 前の足元がふさがっていて、その上が空いていれば 1 段登る
execute at @s unless block ^ ^0.5 ^1 #minecraft:replaceable if block ^ ^1.5 ^1 #minecraft:replaceable align y run teleport @s ~ ~1 ~
