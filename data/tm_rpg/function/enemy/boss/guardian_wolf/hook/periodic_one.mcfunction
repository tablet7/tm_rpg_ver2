#> tm_rpg:enemy/boss/guardian_wolf/hook/periodic_one

# 定期の雷を1発、このプレイヤーの近くに落とす。hook/periodic から呼ばれる
# 落ちる場所: プレイヤーの足元から前後左右 ±3 マスのランダムな場所（高さはプレイヤーの足元。段差では赤い輪が浮く・埋まることがある）
# 技「雷」（enemy/skill/warn_wolf_thunder: 赤い輪 1 秒 → 稲妻。魔法ダメージ＋破裂 3・3 秒）を、ボスの本体の当たり判定（core）が使う
# （ダメージの計算にボスのステータスを使うため。②の咆哮の雷 enemy/skill/wolf_thunder_all と同じ使い方）
# @s ＝ プレイヤー（at @s）

execute summon minecraft:marker run function tm_rpg:enemy/boss/guardian_wolf/hook/spot
execute at @e[type=minecraft:marker,tag=gw_spot,distance=..6,limit=1] as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..64,limit=1] run function tm_rpg:enemy/skill/warn_wolf_thunder
kill @e[type=minecraft:marker,tag=gw_spot,distance=..6]
