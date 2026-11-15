#> tm_rpg:player/skill/test_turret/skill3

# スキル「testタレット」が撃つ関数。main_projectile/turret/tick から、tag test_turret で呼ばれる
# test剣の一斉射撃の本体を、タレットの足元・タレットの向きで撃つ（ダメージなどは turret/restore が戻してある）
# @s ＝ タレット（at @s。向き ＝ 敵の方へ変えたあとの向き）

function tm_rpg:player/skill/test_sword_volley/fire
