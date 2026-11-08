#> tm_rpg:system/item_drop/accessories/roll_default

# アクセサリーの全ステータスを通常の確率で抽選し、結果を storage tm_rpg:item_random data と各スコア（<ステータス名> item_roll）に入れる関数
# item_drop/accessories/default、item_drop/accessories/hp など、アクセサリーのドロップ関数から呼ばれる
# @s ＝ 倒したモブ（Lv スコアがなければ Lv1 として扱う）
# 各ステータスの確率と値の範囲は、下の #per / #base / #div で調整する（値の範囲 = 1 〜 #base + Lv / #div）

# Lv
scoreboard players set #lv item_roll 1
execute if score @s Lv matches 1.. run scoreboard players operation #lv item_roll = @s Lv

# custom_data の初期値
# stutas/stutas_watch は全キーを参照するので、付かなかったステータスも 0 で入れておく
data modify storage tm_rpg:item_random data set value {lv:1,hp:0,hp_rege:0,mp:0,mp_rege:0,armor:0,magic_armor:0,p_attack:0,m_attack:0,cooltime:0,sustaintime:0,range:0,crit_per:0,crit_damage:0,evasion:0,job_bonus:0,luck:0,kaizou:0}
execute store result storage tm_rpg:item_random data.lv int 1 run scoreboard players get #lv item_roll

## HP（60%、1〜10+Lv/2）
scoreboard players set #per item_roll 60
scoreboard players set #base item_roll 10
scoreboard players set #div item_roll 2
function tm_rpg:system/item_drop/roll
scoreboard players operation hp item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.hp int 1 run scoreboard players get #result item_roll

## HP自動回復（30%、1〜1+Lv/4）
scoreboard players set #per item_roll 30
scoreboard players set #base item_roll 1
scoreboard players set #div item_roll 4
function tm_rpg:system/item_drop/roll
scoreboard players operation hp_rege item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.hp_rege int 1 run scoreboard players get #result item_roll

## MP（60%、1〜10+Lv/2）
scoreboard players set #per item_roll 60
scoreboard players set #base item_roll 10
scoreboard players set #div item_roll 2
function tm_rpg:system/item_drop/roll
scoreboard players operation mp item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.mp int 1 run scoreboard players get #result item_roll

## MP自動回復（30%、1〜1+Lv/4）
scoreboard players set #per item_roll 30
scoreboard players set #base item_roll 1
scoreboard players set #div item_roll 4
function tm_rpg:system/item_drop/roll
scoreboard players operation mp_rege item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.mp_rege int 1 run scoreboard players get #result item_roll

## 防御力（40%、1〜3+Lv/2）
scoreboard players set #per item_roll 40
scoreboard players set #base item_roll 3
scoreboard players set #div item_roll 2
function tm_rpg:system/item_drop/roll
scoreboard players operation armor item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.armor int 1 run scoreboard players get #result item_roll

## 魔法防御力（40%、1〜3+Lv/2）
scoreboard players set #per item_roll 40
scoreboard players set #base item_roll 3
scoreboard players set #div item_roll 2
function tm_rpg:system/item_drop/roll
scoreboard players operation magic_armor item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.magic_armor int 1 run scoreboard players get #result item_roll

## 攻撃力（40%、1〜Lv/2）
scoreboard players set #per item_roll 40
scoreboard players set #base item_roll 0
scoreboard players set #div item_roll 2
function tm_rpg:system/item_drop/roll
scoreboard players operation p_attack item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.p_attack int 1 run scoreboard players get #result item_roll

## 魔法攻撃力（40%、1〜Lv/2）
scoreboard players set #per item_roll 40
scoreboard players set #base item_roll 0
scoreboard players set #div item_roll 2
function tm_rpg:system/item_drop/roll
scoreboard players operation m_attack item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.m_attack int 1 run scoreboard players get #result item_roll

## クールタイム低下（20%、1〜1+Lv/5）
scoreboard players set #per item_roll 20
scoreboard players set #base item_roll 1
scoreboard players set #div item_roll 5
function tm_rpg:system/item_drop/roll
scoreboard players operation cooltime item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.cooltime int 1 run scoreboard players get #result item_roll

## 持続時間増加（20%、1〜1+Lv/5）
scoreboard players set #per item_roll 20
scoreboard players set #base item_roll 1
scoreboard players set #div item_roll 5
function tm_rpg:system/item_drop/roll
scoreboard players operation sustaintime item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.sustaintime int 1 run scoreboard players get #result item_roll

## 付与効果増加（20%、1〜1+Lv/5）
scoreboard players set #per item_roll 20
scoreboard players set #base item_roll 1
scoreboard players set #div item_roll 5
function tm_rpg:system/item_drop/roll
scoreboard players operation range item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.range int 1 run scoreboard players get #result item_roll

## クリティカル率（30%、1〜2+Lv/5）
scoreboard players set #per item_roll 30
scoreboard players set #base item_roll 2
scoreboard players set #div item_roll 5
function tm_rpg:system/item_drop/roll
scoreboard players operation crit_per item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.crit_per int 1 run scoreboard players get #result item_roll

## クリティカルダメージ（30%、1〜5+Lv/2）
scoreboard players set #per item_roll 30
scoreboard players set #base item_roll 5
scoreboard players set #div item_roll 2
function tm_rpg:system/item_drop/roll
scoreboard players operation crit_damage item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.crit_damage int 1 run scoreboard players get #result item_roll

## 回避率（20%、1〜1+Lv/10）
scoreboard players set #per item_roll 20
scoreboard players set #base item_roll 1
scoreboard players set #div item_roll 10
function tm_rpg:system/item_drop/roll
scoreboard players operation evasion item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.evasion int 1 run scoreboard players get #result item_roll

## 役職ボーナス（40%、1〜1+Lv/3）
scoreboard players set #per item_roll 40
scoreboard players set #base item_roll 1
scoreboard players set #div item_roll 3
function tm_rpg:system/item_drop/roll
scoreboard players operation job_bonus item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.job_bonus int 1 run scoreboard players get #result item_roll

## 運（20%、1〜1+Lv/5）
scoreboard players set #per item_roll 20
scoreboard players set #base item_roll 1
scoreboard players set #div item_roll 5
function tm_rpg:system/item_drop/roll
scoreboard players operation luck item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.luck int 1 run scoreboard players get #result item_roll
