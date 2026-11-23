#> tm_rpg:system/naguri/process_damage

# 殴られた際にダメージ計算を行う関数。naguri/on_hurt_by、naguri/on_hurt_other から呼ばれる
# 殴った側の武器（custom_data）とステータスからダメージを決め、damage_ex/damage_dealt を実行する

# @s ＝ 殴られた側

# スキルの弾・範囲攻撃のノックバック（damage_ex/damage_dealt_tama・damage_dealt の damage）で動いたときは何もしない
# （ダメージはスキル側で与え済み。ここで動くと、回避の表示や破裂・沈潜のダメージがもう一度出る）
# skill_kb_time ＝ ノックバックを与えた tick の時刻
execute store result score #kb_now temp run time query gametime
execute if score @s skill_kb_time = #kb_now temp run return 0

#say @s なぐられた

# 殴った側への処理は execute on attacker を使う

#execute on attacker run say @s なぐった

#say a
#execute on attacker run say b

# スコアをストレージへ
data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0

# 殴った側の武器の custom_data を storage に入れる（プレイヤーの人参棒はスキルのアイテムなので読まない。素手と同じ扱い）
data remove storage tm_rpg:weapon data
execute on attacker if entity @s[type=player] unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick run data modify storage tm_rpg:weapon data set from entity @s SelectedItem.components."minecraft:custom_data"
execute on attacker if entity @s[type=!player] run data modify storage tm_rpg:weapon data set from entity @s equipment.mainhand.components."minecraft:custom_data"

execute on attacker run scoreboard players set @s temp4 0

# 攻撃間隔を満たしていれば、武器のダメージを計算する
execute on attacker if score @s attack_timer >= @s ATTACK_TIMER_LEV if data storage tm_rpg:weapon data.damage_type run function tm_rpg:system/naguri/weapon_damage

## クリティカル
execute on attacker store result score @s random_rand run random value 1..100
execute on attacker if score @s crit_per >= @s random_rand run scoreboard players operation @s temp4 += @s crit_damage
execute on attacker store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s temp4

# func
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

# 攻撃時間リセット
execute on attacker run scoreboard players set @s attack_timer 0

# ノックバックしたときは判定しない
execute on attacker if entity @s[tag=temp_victim] run function tm_rpg:system/naguri/0damage

# 敵を殴ったのがプレイヤーなら、倒したときにアイテムを渡す相手の候補にする
# （tag item_drop.hit_now。敵の hp が減ったら damage_ex/damage_dealt が印を付ける: system/item_drop/hit_mark/add）
execute if entity @s[tag=enemy] on attacker if entity @s[type=player] run tag @s add item_drop.hit_now

# ダメージを与える
function tm_rpg:system/damage_ex/damage_dealt
