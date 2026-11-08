#> tm_rpg:system/damage_ex/0damage_func

# 受けるダメージを0にする関数（func 引数用ではない）。damage_ex/damage_dealt_tama から、同じ弾にすでに当たっていたときに呼ばれる
# @s ＝ ダメージを受けるエンティティ

scoreboard players set @s damage_dealt_pmc_p 0
scoreboard players set @s damage_dealt_pmc_m 0
scoreboard players set @s damage_dealt_pmc_c 0

tag @s add 0damage_ent
