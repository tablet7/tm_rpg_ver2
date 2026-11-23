#> test_weapon_motion:sengi/common/use

# 戦技を使う（シフト＋右クリック）。各武器の tick（sword/tick・scythe/tick・dual_sword/tick・katana/tick）から呼ばれる
# メインハンドの武器の custom_data の sengi（戦技1）か sengi2（戦技2）に書かれた関数を呼ぶ。MP は使わない
# クールタイムは、戦技の関数が #sengi_cd twm_tmp に入れた tick 数（戦技ごとに固定。プレイヤーの cooltime では減らない）
#   戦技1 は twm_sengi_cd、戦技2 は twm_sengi2_cd で別々に数える（test_weapon_motion:tick で毎 tick 1 減らす。武器を持ち替えても続く）
# 入力: #sengi_slot twm_tmp ＝ 1（戦技1 = sengi）か 2（戦技2 = sengi2）
# 最初に #use twm_tmp を 0 にする（シフト＋右クリックは、攻撃の右クリックとしては数えない）
# @s ＝ プレイヤー（at @s）

scoreboard players set #use twm_tmp 0

# クールタイム中は失敗音（tm_rpg のスキルと同じ音）
execute if score #sengi_slot twm_tmp matches 1 if score @s twm_sengi_cd matches 1.. run return run playsound minecraft:block.dispenser.fail master @s ~ ~ ~
execute if score #sengi_slot twm_tmp matches 2 if score @s twm_sengi2_cd matches 1.. run return run playsound minecraft:block.dispenser.fail master @s ~ ~ ~

# 呼ぶ関数（無ければ失敗音）
data remove storage test_weapon_motion:sengi item
execute if score #sengi_slot twm_tmp matches 1 run data modify storage test_weapon_motion:sengi item.func set from entity @s SelectedItem.components."minecraft:custom_data".sengi
execute if score #sengi_slot twm_tmp matches 2 run data modify storage test_weapon_motion:sengi item.func set from entity @s SelectedItem.components."minecraft:custom_data".sengi2
execute unless data storage test_weapon_motion:sengi item.func run return run playsound minecraft:block.dispenser.fail master @s ~ ~ ~

# 出血（tm_rpg のスキルと同じ: 使うたびに出血のダメージ。tm_rpg:player/skill/start）
execute if score @s bleeding_time matches 1.. run function tm_rpg:system/abnormal/bleeding_damage

# 撃った人（弾の main_projectile/init が summon_ent_id に写す）・プレイヤーが使う技（tm_rpg:player/skill/start と同じ）
scoreboard players operation #skill_owner temp = @s ent_id
scoreboard players set #skill_side temp 0

# 戦技（成功で 1、不発で 0。関数 ID が間違っていると何も入らず 0 のまま → 失敗音）
scoreboard players set #sengi_cd twm_tmp 0
scoreboard players set #sengi_ok twm_tmp 0
execute store result score #sengi_ok twm_tmp run function test_weapon_motion:sengi/common/run with storage test_weapon_motion:sengi item
execute if score #sengi_ok twm_tmp matches ..0 run return run playsound minecraft:block.dispenser.fail master @s ~ ~ ~

# クールタイム
execute if score #sengi_slot twm_tmp matches 1 run scoreboard players operation @s twm_sengi_cd = #sengi_cd twm_tmp
execute if score #sengi_slot twm_tmp matches 2 run scoreboard players operation @s twm_sengi2_cd = #sengi_cd twm_tmp
