#> tm_rpg:player/skill/give_all

# 表（md/skill_md/skills.csv）にある全スキルのアイテムを渡すテスト用の関数。手動で /function tm_rpg:player/skill/give_all を実行する
# md/skill_md/build_skills.py が書き出す。手で直さない（表を直してスクリプトを動かす）
# @s ＝ プレイヤー

loot give @s loot tm_rpg:item/skill/test
loot give @s loot tm_rpg:item/skill/move/front_dash
loot give @s loot tm_rpg:item/skill/move/left_step
loot give @s loot tm_rpg:item/skill/move/back_jump
loot give @s loot tm_rpg:item/skill/move/up_jump
