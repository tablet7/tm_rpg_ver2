#> tm_rpg:enemy/boss/guardian_wolf/despawn

# guardian_wolf を片付ける（見た目・当たり判定・マスター）。召喚の直前、離脱、/reload のあと、撃破の最後に呼ばれる

# 片付けのときの処理（手で書いた関数。天候を戻すなど）。ボスがいるときだけ
execute as @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] at @s run function tm_rpg:enemy/boss/guardian_wolf/hook/end
kill @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf]
kill @e[type=minecraft:marker,tag=guardian_wolf]
