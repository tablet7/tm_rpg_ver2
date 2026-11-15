#> tm_rpg:player/skill/test_sword_volley/summon_loop

# スキル「test剣の一斉射撃」で、待つ剣を #volley_count temp 本出すくり返し。skill1 から呼ばれる
# @s ＝ スキルを使ったプレイヤー（実行位置 ＝ プレイヤーの足元、向き ＝ プレイヤーの横の向き）

execute summon minecraft:item_display run function tm_rpg:player/skill/test_sword_volley/skill5
scoreboard players remove #volley_count temp 1
execute if score #volley_count temp matches 1.. run function tm_rpg:player/skill/test_sword_volley/summon_loop
