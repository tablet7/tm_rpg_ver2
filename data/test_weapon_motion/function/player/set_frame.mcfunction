#> test_weapon_motion:player/set_frame

# メインハンドの武器の見た目を、@s の twm_frame のコマにする（custom_model_data の floats を [twm_frame] にする）
# リソースパックの items/weapon.json が floats[0] でコマのモデルを選ぶ。同じアイテムの部品だけを変えるので、持ち替えの動きは出ない
# item modifier は決まった名前（#frame）のスコアを読むので、@s のスコアを写してから書き換える
# @s ＝ プレイヤー

scoreboard players operation #frame twm_tmp = @s twm_frame
item modify entity @s weapon.mainhand test_weapon_motion:frame
