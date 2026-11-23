#> test_weapon_motion:player/dual/fix

# 双剣の形の武器を、オフハンドに「双剣の見た目」で持たせ直す。player/dual/tick から呼ばれる
# @s ＝ プレイヤー

# メインハンドに持っていたら、オフハンドへ移す（オフハンドが空いていないときは、上書きして消さないように知らせて終わる）
execute if items entity @s weapon.mainhand *[minecraft:item_model="test_weapon_motion:weapon"] if items entity @s weapon.offhand * run return run title @s actionbar {"text":"双剣はオフハンドに持ちます。オフハンドを空けてください","color":"red"}
execute if items entity @s weapon.mainhand *[minecraft:item_model="test_weapon_motion:weapon"] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute if items entity @s weapon.mainhand *[minecraft:item_model="test_weapon_motion:weapon"] run item replace entity @s weapon.mainhand with minecraft:air

item modify entity @s weapon.offhand test_weapon_motion:to_dual
tag @s add twm_dual
