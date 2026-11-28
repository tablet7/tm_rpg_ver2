#> tm_rpg:system/item_drop/stat_range

# 値の番号 #stat item_roll から、付く確率 #per・値の範囲 #base・#div（item_roll）を入れる関数（マクロなし）
# 値の範囲 ＝ 1 〜 #base ＋ Lv ÷ #div。確率と範囲はここだけで決める（ドロップの roll_default・特化の hp・armor/roll_hp と、改造台の「可能性の琥珀」が使う）
# 使い方: scoreboard players set #stat item_roll <番号> → function tm_rpg:system/item_drop/stat_range → function tm_rpg:system/item_drop/roll（または max）
# 番号（custom_data のキー）: 1 hp・2 hp_rege・3 mp・4 mp_rege・5 armor・6 magic_armor・7 p_attack・8 m_attack・9 cooltime・10 sustaintime・11 range・12 crit_per・13 crit_damage・14 evasion・15 job_bonus・16 luck

## 1 HP（60%、1〜10+Lv/2）
execute if score #stat item_roll matches 1 run scoreboard players set #per item_roll 60
execute if score #stat item_roll matches 1 run scoreboard players set #base item_roll 10
execute if score #stat item_roll matches 1 run scoreboard players set #div item_roll 2
## 2 HP自動回復（30%、1〜1+Lv/4）
execute if score #stat item_roll matches 2 run scoreboard players set #per item_roll 30
execute if score #stat item_roll matches 2 run scoreboard players set #base item_roll 1
execute if score #stat item_roll matches 2 run scoreboard players set #div item_roll 4
## 3 MP（60%、1〜10+Lv/2）
execute if score #stat item_roll matches 3 run scoreboard players set #per item_roll 60
execute if score #stat item_roll matches 3 run scoreboard players set #base item_roll 10
execute if score #stat item_roll matches 3 run scoreboard players set #div item_roll 2
## 4 MP自動回復（30%、1〜1+Lv/4）
execute if score #stat item_roll matches 4 run scoreboard players set #per item_roll 30
execute if score #stat item_roll matches 4 run scoreboard players set #base item_roll 1
execute if score #stat item_roll matches 4 run scoreboard players set #div item_roll 4
## 5 防御力（40%、1〜3+Lv/2）
execute if score #stat item_roll matches 5 run scoreboard players set #per item_roll 40
execute if score #stat item_roll matches 5 run scoreboard players set #base item_roll 3
execute if score #stat item_roll matches 5 run scoreboard players set #div item_roll 2
## 6 魔法防御力（40%、1〜3+Lv/2）
execute if score #stat item_roll matches 6 run scoreboard players set #per item_roll 40
execute if score #stat item_roll matches 6 run scoreboard players set #base item_roll 3
execute if score #stat item_roll matches 6 run scoreboard players set #div item_roll 2
## 7 攻撃力（40%、1〜Lv/2）
execute if score #stat item_roll matches 7 run scoreboard players set #per item_roll 40
execute if score #stat item_roll matches 7 run scoreboard players set #base item_roll 0
execute if score #stat item_roll matches 7 run scoreboard players set #div item_roll 2
## 8 魔法攻撃力（40%、1〜Lv/2）
execute if score #stat item_roll matches 8 run scoreboard players set #per item_roll 40
execute if score #stat item_roll matches 8 run scoreboard players set #base item_roll 0
execute if score #stat item_roll matches 8 run scoreboard players set #div item_roll 2
## 9 クールタイム低下（20%、1〜1+Lv/5）
execute if score #stat item_roll matches 9 run scoreboard players set #per item_roll 20
execute if score #stat item_roll matches 9 run scoreboard players set #base item_roll 1
execute if score #stat item_roll matches 9 run scoreboard players set #div item_roll 5
## 10 持続時間増加（20%、1〜1+Lv/5）
execute if score #stat item_roll matches 10 run scoreboard players set #per item_roll 20
execute if score #stat item_roll matches 10 run scoreboard players set #base item_roll 1
execute if score #stat item_roll matches 10 run scoreboard players set #div item_roll 5
## 11 付与効果増加（20%、1〜1+Lv/5）
execute if score #stat item_roll matches 11 run scoreboard players set #per item_roll 20
execute if score #stat item_roll matches 11 run scoreboard players set #base item_roll 1
execute if score #stat item_roll matches 11 run scoreboard players set #div item_roll 5
## 12 クリティカル率（30%、1〜2+Lv/5）
execute if score #stat item_roll matches 12 run scoreboard players set #per item_roll 30
execute if score #stat item_roll matches 12 run scoreboard players set #base item_roll 2
execute if score #stat item_roll matches 12 run scoreboard players set #div item_roll 5
## 13 クリティカルダメージ（30%、1〜5+Lv/2）
execute if score #stat item_roll matches 13 run scoreboard players set #per item_roll 30
execute if score #stat item_roll matches 13 run scoreboard players set #base item_roll 5
execute if score #stat item_roll matches 13 run scoreboard players set #div item_roll 2
## 14 回避率（20%、1〜1+Lv/10）
execute if score #stat item_roll matches 14 run scoreboard players set #per item_roll 20
execute if score #stat item_roll matches 14 run scoreboard players set #base item_roll 1
execute if score #stat item_roll matches 14 run scoreboard players set #div item_roll 10
## 15 役職ボーナス（40%、1〜1+Lv/3）
execute if score #stat item_roll matches 15 run scoreboard players set #per item_roll 40
execute if score #stat item_roll matches 15 run scoreboard players set #base item_roll 1
execute if score #stat item_roll matches 15 run scoreboard players set #div item_roll 3
## 16 運（20%、1〜1+Lv/5）
execute if score #stat item_roll matches 16 run scoreboard players set #per item_roll 20
execute if score #stat item_roll matches 16 run scoreboard players set #base item_roll 1
execute if score #stat item_roll matches 16 run scoreboard players set #div item_roll 5
