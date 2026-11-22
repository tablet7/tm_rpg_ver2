#> tm_rpg:enemy/boss/guardian_wolf/part_tick

# 見た目・当たり判定1体ぶんの毎tick処理。guardian_wolf/tick から呼ばれる
# @s ＝ 見た目（item_display）か当たり判定（Mob）。実行位置と向きはマスターのもの（^ ^ ^ はマスター基準）

execute if entity @s[type=minecraft:item_display] run return run function tm_rpg:enemy/boss/guardian_wolf/vis_tick
function tm_rpg:enemy/boss/guardian_wolf/hb_tick
