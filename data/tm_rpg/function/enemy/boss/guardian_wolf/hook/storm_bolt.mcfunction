#> tm_rpg:enemy/boss/guardian_wolf/hook/storm_bolt

# 形態が変わる咆哮の稲妻を1本落とす（演出だけ。ダメージも予兆も無い）。hook/storm_start と hook/tick から、5 tick ごとに 5 回呼ばれる
# 落ちる場所: ボスの足元から前後左右 ±5 マスのランダムな場所（高さはボスの足元）。見た目と音は技「雷」の稲妻（wolf_thunder/fx/cast）
# @s ＝ マスター（at @s）

scoreboard players set #gw_range temp 5
execute summon minecraft:marker run function tm_rpg:enemy/boss/guardian_wolf/hook/spot
execute at @e[type=minecraft:marker,tag=gw_spot,distance=..8,limit=1] run function tm_rpg:player/skill/wolf_thunder/fx/cast
kill @e[type=minecraft:marker,tag=gw_spot,distance=..8]
