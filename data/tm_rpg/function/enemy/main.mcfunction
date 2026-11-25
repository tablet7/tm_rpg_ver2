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


# バフ（スキル・ポーション）の時間切れ。一番早く切れる時刻 buff_next になった相手だけ外す（system/buff/expire）
execute if score @s buff_next <= #now temp run function tm_rpg:system/buff/expire

# HP,MP,Armorなどの変動（材料が変わったときだけ。召喚直後・バフの付け外しで stat_dirty が 0 でなくなる）
execute unless score @s stat_dirty matches 0 run function tm_rpg:system/stutas/hendou_main

# 技を使っているあいだ自分から動けない敵の、残り tick を減らす（enemy/skill/lock）
execute if score @s skill_lock matches 1.. run function tm_rpg:enemy/skill/lock_tick

# 技を選んで使う（tag enemy_ai の敵だけ。enemy/ai/think）
execute if entity @s[tag=enemy_ai] run function tm_rpg:enemy/ai/think

# モブごとの毎tick処理（見た目の差し替えなど）。この関数は敵1体ごとに呼ばれているので、検索は増えない
execute if entity @s[tag=mecha_mosquito] run function tm_rpg:enemy/mob/mecha_mosquito/tick
execute if entity @s[tag=sealed_statue] run function tm_rpg:enemy/mob/sealed_statue/tick
