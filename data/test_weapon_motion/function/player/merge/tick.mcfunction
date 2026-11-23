#> test_weapon_motion:player/merge/tick

# 合体中（twm_state 1）の毎 tick の処理。コマを 1 つ進め、19 コマ目（斧を構えた姿勢）で斧の形（twm_state 2）にする。player/tick から呼ばれる
# @s ＝ プレイヤー（at @s）

# 合体を始めた tick に見えなくしたオフハンドの武器を消す（持ち替えの動きは出るが、見えない武器が下がるだけなので目立たない）
execute if items entity @s weapon.offhand *[minecraft:item_model="test_weapon_motion:weapon"] run item replace entity @s weapon.offhand with minecraft:air

scoreboard players add @s twm_frame 1
function test_weapon_motion:player/set_frame
execute if score @s twm_frame matches 12 run playsound minecraft:block.chain.place player @a ~ ~ ~ 1 0.8
execute if score @s twm_frame matches 19.. run playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 0.7
execute if score @s twm_frame matches 19.. run scoreboard players set @s twm_state 2
