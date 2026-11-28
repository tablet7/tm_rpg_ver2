#> test_weapon_motion:player/merge/start

# 双剣 → 斧 の合体を始める（右クリックした tick）。player/dual/tick から呼ばれる
# オフハンドの武器をメインハンドへ写し（0 コマ目 = 偽物の右腕＋短剣2本。今の双剣と同じ見た目）、オフハンドの方は見えなくする
# オフハンドの方は次の tick に消す（merge/tick）。同じ tick に消すと、オフハンドの持ち替えの動き（手が下がる）で
# 左の短剣が下へ動いて見えるため（空の手には hand_animation_on_swap が効かず、必ず持ち替えの動きが出る）
# メインハンドの物の種類が変わると、攻撃速度で決まる時間（初期値 5 tick）をかけて手が下からせり上がるので、
# 武器に攻撃速度 +100 を付けてある（loot_table/weapon。オフハンドにあるうちから効く slot: hand）
# @s ＝ プレイヤー（at @s）

# メインハンドが空いていないと、写すときに上書きして消してしまうので、知らせて終わる
# HUD（tm_rpg:player/hud/show）がこのメッセージを上書きしないよう、2秒止める
execute if items entity @s weapon.mainhand * run scoreboard players set @s hud_hold 40
execute if items entity @s weapon.mainhand * run return run title @s actionbar {"text":"メインハンドを空けてから右クリックしてください","color":"red"}

item replace entity @s weapon.mainhand from entity @s weapon.offhand
item modify entity @s weapon.mainhand test_weapon_motion:to_body
item modify entity @s weapon.offhand test_weapon_motion:to_hidden
scoreboard players set @s twm_frame 0
scoreboard players set @s twm_state 1
playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 1 1.2
