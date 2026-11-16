#> tm_rpg:enemy/mob/mecha_mosquito/init

# 召喚直後の初期化。tm_rpg:enemy/summon/mecha_mosquito から呼ばれる
# @s ＝ 召喚したモブ

scoreboard players set @s mob_anim 0
# 武器（通常攻撃のダメージは武器の custom_data で決まる）
loot replace entity @s weapon.mainhand loot tm_rpg:item/weapon/test_weapon
# 透明Mobでも手の武器は見えてしまうので、何も描かないアイテム定義に差し替える（custom_data はそのまま残る）
data modify entity @s equipment.mainhand.components."minecraft:item_model" set value "tm_rpg:mob/empty"
# ステータス設定とHPバー（new_mob タグもここで外れる）
function tm_rpg:enemy/enemy_set_status
# 技の選び方（距離・クールタイム・重みで tm_rpg のスキルを選ぶ。enemy/ai/mecha_mosquito。enemy/main が毎tick enemy/ai/think を呼ぶ）
function tm_rpg:enemy/ai/mecha_mosquito/set
