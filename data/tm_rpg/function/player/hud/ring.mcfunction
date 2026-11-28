#> tm_rpg:player/hud/ring

# スキル枠 1〜6 のリングの段階（skill1_ring〜skill6_ring）を計算する関数（マクロなし）
# player/seconds（リキャストを減らした後）と player/skill/common/finish（スキルを使った後）から呼ばれる
# 段階 ＝ 残りの割合を 9 段階で切り上げ ＝ (recast × 9 + cdmax − 1) ÷ cdmax。0 ＝ 使える、9 ＝ 使った直後
# cdmax（skillN_cdmax）は使ったときのクールタイム。振動で recast が cdmax を超えたときも 9 で止める
# @s ＝ プレイヤー

scoreboard players operation @s skill1_ring = @s skill1_recast
scoreboard players operation @s skill1_ring *= System CONTACT_9
scoreboard players operation @s skill1_ring += @s skill1_cdmax
scoreboard players remove @s skill1_ring 1
execute if score @s skill1_cdmax matches 1.. run scoreboard players operation @s skill1_ring /= @s skill1_cdmax
scoreboard players operation @s skill1_ring < System CONTACT_9
execute if score @s skill1_recast matches ..0 run scoreboard players set @s skill1_ring 0

scoreboard players operation @s skill2_ring = @s skill2_recast
scoreboard players operation @s skill2_ring *= System CONTACT_9
scoreboard players operation @s skill2_ring += @s skill2_cdmax
scoreboard players remove @s skill2_ring 1
execute if score @s skill2_cdmax matches 1.. run scoreboard players operation @s skill2_ring /= @s skill2_cdmax
scoreboard players operation @s skill2_ring < System CONTACT_9
execute if score @s skill2_recast matches ..0 run scoreboard players set @s skill2_ring 0

scoreboard players operation @s skill3_ring = @s skill3_recast
scoreboard players operation @s skill3_ring *= System CONTACT_9
scoreboard players operation @s skill3_ring += @s skill3_cdmax
scoreboard players remove @s skill3_ring 1
execute if score @s skill3_cdmax matches 1.. run scoreboard players operation @s skill3_ring /= @s skill3_cdmax
scoreboard players operation @s skill3_ring < System CONTACT_9
execute if score @s skill3_recast matches ..0 run scoreboard players set @s skill3_ring 0

scoreboard players operation @s skill4_ring = @s skill4_recast
scoreboard players operation @s skill4_ring *= System CONTACT_9
scoreboard players operation @s skill4_ring += @s skill4_cdmax
scoreboard players remove @s skill4_ring 1
execute if score @s skill4_cdmax matches 1.. run scoreboard players operation @s skill4_ring /= @s skill4_cdmax
scoreboard players operation @s skill4_ring < System CONTACT_9
execute if score @s skill4_recast matches ..0 run scoreboard players set @s skill4_ring 0

scoreboard players operation @s skill5_ring = @s skill5_recast
scoreboard players operation @s skill5_ring *= System CONTACT_9
scoreboard players operation @s skill5_ring += @s skill5_cdmax
scoreboard players remove @s skill5_ring 1
execute if score @s skill5_cdmax matches 1.. run scoreboard players operation @s skill5_ring /= @s skill5_cdmax
scoreboard players operation @s skill5_ring < System CONTACT_9
execute if score @s skill5_recast matches ..0 run scoreboard players set @s skill5_ring 0

scoreboard players operation @s skill6_ring = @s skill6_recast
scoreboard players operation @s skill6_ring *= System CONTACT_9
scoreboard players operation @s skill6_ring += @s skill6_cdmax
scoreboard players remove @s skill6_ring 1
execute if score @s skill6_cdmax matches 1.. run scoreboard players operation @s skill6_ring /= @s skill6_cdmax
scoreboard players operation @s skill6_ring < System CONTACT_9
execute if score @s skill6_recast matches ..0 run scoreboard players set @s skill6_ring 0
