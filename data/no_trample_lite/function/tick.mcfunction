#> no_trample_lite:tick

# 農地の踏み荒らしを防ぐ。#minecraft:tick から毎 tick 呼ばれる
# 空中にいて、まだ slow_falling が付いていないプレイヤーだけ調べる
# （地面を歩いている間は何もしない。農地は落下しないと荒らされないため）
execute as @a[gamemode=!spectator,predicate=no_trample_lite:airborne,predicate=!no_trample_lite:has_slow_falling] at @s run function no_trample_lite:scan
