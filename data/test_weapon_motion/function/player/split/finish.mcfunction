#> test_weapon_motion:player/split/finish

# 分離の受け渡し（2 tick 目）。メインハンドを空けて本物の右腕に戻し、双剣の形（twm_state 0）にする。player/tick から呼ばれる
# メインハンドが空になると、持ち替えの動き（偽物の腕が一度下がり、本物の腕が上がる）が必ず出る
# （空の手には hand_animation_on_swap を付けられないため。そのあいだ右の短剣だけがその場に残って見える）
# @s ＝ プレイヤー（at @s）

execute if items entity @s weapon.mainhand *[minecraft:item_model="test_weapon_motion:weapon"] run item replace entity @s weapon.mainhand with minecraft:air
scoreboard players set @s twm_state 0
playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 1.4
