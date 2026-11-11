#> tm_rpg:enemy/main

# 敵の毎tick処理。tm_rpg:main から呼ばれる
# 殴られた判定、HP割合とHPバーの更新、ステータスの再計算を行う
# @s ＝ 敵（tag=enemy）

# hp=0
execute if entity @s[scores={hp = ..0}] run function tm_rpg:enemy/death_main

# 殴られたとき 耐性MAXじゃないといけない
execute as @s[nbt={HurtTime:10s}] unless block ~ ~ ~ fire unless block ~ ~ ~ lava at @s run function tm_rpg:system/naguri/on_hurt_by

# hp変動
scoreboard players operation @s hp_ratio = @s hp
scoreboard players operation @s hp_ratio *= System CONTACT_20
scoreboard players operation @s hp_ratio /= @s HP_MAX
execute unless score @s hp_ratio = @s hp_ratio_old run function tm_rpg:system/stutas/hp_ratio_watch

# hp表示テキストのtp
scoreboard players operation System temp = @s ent_id
execute as @e[type=text_display,tag=mount_text] if score @s ent_id = System temp run function tm_rpg:system/hp_text_update


# HP,MP,Armorなどの変動
function tm_rpg:system/stutas/hendou_main

# モブごとの毎tick処理（見た目の差し替えなど）。この関数は敵1体ごとに呼ばれているので、検索は増えない
execute if entity @s[tag=mecha_mosquito] run function tm_rpg:enemy/mob/mecha_mosquito/tick
