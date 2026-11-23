#> test_weapon_motion:player/split/handoff

# 分離の受け渡し（1 tick 目）。player/split/tick から呼ばれる
# 武器をオフハンドへ写して双剣の見た目にし、メインハンドの方は腕だけのコマ（50）にする
# オフハンドの短剣2本＋メインハンドの偽物の右腕で、0 コマ目と同じ見た目になる。メインハンドは次の tick に空ける（split/finish）
# @s ＝ プレイヤー（at @s）

# オフハンドが空いていないと上書きして消してしまうので、空くまで 0 コマ目のまま待つ
execute if items entity @s weapon.offhand * run return run title @s actionbar {"text":"オフハンドを空けてください","color":"red"}

item replace entity @s weapon.offhand from entity @s weapon.mainhand
item modify entity @s weapon.offhand test_weapon_motion:to_dual
tag @s add twm_dual
scoreboard players set @s twm_frame 50
function test_weapon_motion:player/set_frame
scoreboard players set @s twm_state 5
