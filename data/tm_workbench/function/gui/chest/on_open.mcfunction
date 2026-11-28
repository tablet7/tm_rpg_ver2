#> tm_workbench:gui/chest/on_open

# チェスト付きトロッコを右クリックしたとき。advancement tm_workbench:gui/open_cart の reward から呼ばれる（どのトロッコを開いたかはわからない）
# 自分のトロッコが出ている人: 目は自分のトロッコの中なので、ふつうは自分のトロッコに当たる。目がほかの人のトロッコの箱の中にも入っているときだけ、そのトロッコを片付ける
#   （トロッコの原点は箱の底の真ん中なので、「目の 0.35 下」から 0.5 以内にトロッコの原点があれば、目が箱の中にある。隣に立っているだけの人のトロッコは消さない）
# 自分のトロッコが出ていない人: 目の近く（4 ブロック）で一番近い、ほかの人のトロッコを開いたとみなして片付ける（中の物は持ち主だけが拾える落とし物になる。開いた画面は閉じる）
# @s ＝ 右クリックしたプレイヤー（いる場所・向きも @s）

advancement revoke @s only tm_workbench:gui/open_cart
# 番号（ent_id。tm_rpg の player/first_reload が付ける）が無い人はトロッコを持てない
execute unless score @s ent_id matches -2147483648.. run return 0
scoreboard players operation #me gui_tmp = @s ent_id
execute unless entity @s[tag=gui_has_cart] anchored eyes positioned ^ ^ ^ as @e[type=chest_minecart,tag=gui_cart,distance=..4] unless score @s gui_owner = #me gui_tmp run tag @s add gui_other
execute unless entity @s[tag=gui_has_cart] anchored eyes positioned ^ ^ ^ as @e[type=chest_minecart,tag=gui_other,distance=..4,sort=nearest,limit=1] at @s run function tm_workbench:gui/chest/close
execute if entity @s[tag=gui_has_cart] anchored eyes positioned ^ ^ ^ positioned ~ ~-0.35 ~ as @e[type=chest_minecart,tag=gui_cart,distance=..0.5] unless score @s gui_owner = #me gui_tmp at @s run function tm_workbench:gui/chest/close
tag @e[type=chest_minecart,tag=gui_other,distance=..8] remove gui_other
execute if entity @s[tag=gui_has_cart] run tag @s add gui_cart_open
