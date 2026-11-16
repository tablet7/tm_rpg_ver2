#> tm_rpg:player/skill/light_cross/fall

# スキル「光の十字架」の十字架を1本出す。skill3（プレイヤーの矢）と enemy/skill/warn_light_cross_fall（敵。予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・kill_time・func）と #skill_owner temp・#skill_side temp・#light_cross_tick temp を入れておくこと
# 実行位置（足元）の 6〜9 マス上・左右 ±3 マスのランダムな位置から、実行位置の 1 マス上めがけて落とす（skill5）
# @s ＝ 管理役か敵（実行位置 ＝ 落ちる先の足元）

execute summon minecraft:item_display run function tm_rpg:player/skill/light_cross/skill5
