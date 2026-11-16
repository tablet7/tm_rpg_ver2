#> tm_rpg:player/skill/test_sword_rain/skill3

# スキル「test剣の雨」の管理役が、剣を1本出す関数。main_projectile/spawner/spawn から、tag test_sword_rain で呼ばれる
# 管理役の場所に出し、skill4 で上の箱のランダムな位置に動かす（skill4 の実行位置・向き ＝ 管理役の位置・向き）
# @s ＝ 管理役（at @s）

execute summon minecraft:item_display run function tm_rpg:player/skill/test_sword_rain/skill4
