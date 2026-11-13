#> tm_rpg:system/stutas/equipment_watch

# 装備（メインハンド・オフハンド・防具）の custom_data のステータスを加算する関数。stutas/hendou_main から毎 tick 呼ばれる
# エンティティのデータ読み込みは重いので、custom_data 付きの装備があるときだけ、なるべく1回で読む
# @s ＝ プレイヤーまたは敵

# custom_data 付きの装備がなければ何もしない
execute unless items entity @s weapon.mainhand *[custom_data] unless items entity @s weapon.offhand *[custom_data] unless items entity @s armor.* *[custom_data] run return 0

# プレイヤーのメインハンド（プレイヤーは SelectedItem から読む）
# 人参棒はスキルのアイテムなので読まない（スキルの mp・cooltime などがステータスとして足されないように）
execute if entity @s[type=player] if items entity @s weapon.mainhand *[custom_data] unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick run data modify storage tm_rpg:stutas item set from entity @s SelectedItem.components."minecraft:custom_data"
execute if entity @s[type=player] if items entity @s weapon.mainhand *[custom_data] unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick run function tm_rpg:system/stutas/stutas_watch

# プレイヤーでオフハンド・防具に custom_data がなければ、ここで終わる
execute if entity @s[type=player] unless items entity @s weapon.offhand *[custom_data] unless items entity @s armor.* *[custom_data] run return 0

# 装備をまとめて1回だけ読む
data modify storage tm_rpg:stutas eq set from entity @s equipment

## mainhand（敵のみ。プレイヤーの equipment には mainhand がない）
data remove storage tm_rpg:stutas item
data modify storage tm_rpg:stutas item set from storage tm_rpg:stutas eq.mainhand.components."minecraft:custom_data"
execute if data storage tm_rpg:stutas item run function tm_rpg:system/stutas/stutas_watch

## offhand（人参棒はスキルのアイテムなので読まない）
data remove storage tm_rpg:stutas item
execute unless items entity @s weapon.offhand minecraft:carrot_on_a_stick run data modify storage tm_rpg:stutas item set from storage tm_rpg:stutas eq.offhand.components."minecraft:custom_data"
execute if data storage tm_rpg:stutas item run function tm_rpg:system/stutas/stutas_watch

## head
data remove storage tm_rpg:stutas item
data modify storage tm_rpg:stutas item set from storage tm_rpg:stutas eq.head.components."minecraft:custom_data"
execute if data storage tm_rpg:stutas item run function tm_rpg:system/stutas/stutas_watch

## chest
data remove storage tm_rpg:stutas item
data modify storage tm_rpg:stutas item set from storage tm_rpg:stutas eq.chest.components."minecraft:custom_data"
execute if data storage tm_rpg:stutas item run function tm_rpg:system/stutas/stutas_watch

## legs
data remove storage tm_rpg:stutas item
data modify storage tm_rpg:stutas item set from storage tm_rpg:stutas eq.legs.components."minecraft:custom_data"
execute if data storage tm_rpg:stutas item run function tm_rpg:system/stutas/stutas_watch

## feet
data remove storage tm_rpg:stutas item
data modify storage tm_rpg:stutas item set from storage tm_rpg:stutas eq.feet.components."minecraft:custom_data"
execute if data storage tm_rpg:stutas item run function tm_rpg:system/stutas/stutas_watch
