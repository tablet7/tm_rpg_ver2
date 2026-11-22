#> tm_rpg:enemy/boss/guardian_wolf/hook/death

# ボス「ガーディアンウルフ」を倒したときの処理（手で書いた関数。リグ定義の hooks.death）。guardian_wolf/death_end から、倒れる動きのあと・片付けの前に呼ばれる
# 体から黄色い光が散る演出を出し、報酬を出す。/reload やプレイヤーがいなくなったときには呼ばれない（報酬が出ないように）
# このあと death_end が爆発を出して片付け（despawn → hook/end で晴れに戻す）
# @s ＝ マスター（at @s）

# 体から黄色い光が散る（体は前後に長いので、前後左右に広く出す）
particle minecraft:flash{color:[1.0,0.9,0.4,1.0]} ~ ~2 ~ 0 0 0 0 1 force
particle minecraft:end_rod ~ ~2 ~ 2 1 3 0.15 60 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:2.0} ~ ~2 ~ 2.5 1.2 3.5 0 80 force
particle minecraft:electric_spark ~ ~2 ~ 2 1 3 0.3 40 force
# 音: 雷の余韻（アタック）＋ビーコンが止まる低い音（芯）＋アメジストの響き（光が散る余韻）
playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1.5 1.2
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 2 0.6
playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 2 0.8

# 報酬（中身は未定）
function tm_rpg:enemy/boss/guardian_wolf/hook/reward
