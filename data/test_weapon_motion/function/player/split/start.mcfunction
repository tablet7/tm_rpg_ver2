#> test_weapon_motion:player/split/start

# 斧 → 双剣 の分離を始める（しゃがんで右クリックした tick）。19 コマ目から 0 コマ目へ逆に再生する。player/axe/use から呼ばれる
# 分離の最後にオフハンドへ武器を戻すので、オフハンドが空いていないときは知らせて終わる
# @s ＝ プレイヤー（at @s）

# HUD（tm_rpg:player/hud/show）がこのメッセージを上書きしないよう、2秒止める
execute if items entity @s weapon.offhand * run scoreboard players set @s hud_hold 40
execute if items entity @s weapon.offhand * run return run title @s actionbar {"text":"オフハンドを空けてから分離してください","color":"red"}

# 振り下ろしのあとは 41 コマ目（19 と同じ姿勢）のままなので、19 にそろえる
scoreboard players set @s twm_frame 19
function test_weapon_motion:player/set_frame
scoreboard players set @s twm_state 4
playsound minecraft:block.chain.break player @a ~ ~ ~ 1 0.8
