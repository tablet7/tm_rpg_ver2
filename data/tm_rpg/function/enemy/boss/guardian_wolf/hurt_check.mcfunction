#> tm_rpg:enemy/boss/guardian_wolf/hurt_check

# 当たり判定の被弾チェック。guardian_wolf/hb_tick から呼ばれる
# tm_rpg のダメージ処理（damage_ex/damage_dealt）が減らした hp を、前のtickの値と比べる（NBT は読まない）
# @s ＝ 当たり判定

execute if score @s hp < @s boss_hp_last run function tm_rpg:enemy/boss/guardian_wolf/hurt
# HP集約: 本体以外の hp は毎tick元に戻す（減った分は hurt で本体へ移してある）。本体は今の hp を記録する
execute if entity @s[tag=!guardian_wolf.core] run scoreboard players operation @s hp = @s boss_hp_last
execute if entity @s[tag=guardian_wolf.core] run scoreboard players operation @s boss_hp_last = @s hp
