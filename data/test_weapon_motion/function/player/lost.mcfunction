#> test_weapon_motion:player/lost

# 斧の形（twm_state 1〜5）なのに、メインハンドに武器が無くなったプレイヤーを双剣の形に戻す。test_weapon_motion:tick から呼ばれる
# （ホットバーの切り替え・Q で捨てた・F で持ち替えた・持ち物の画面で動かした・死んだ など）
# 持ち物の中の武器を消してから、新しい双剣を1本渡す。持ち物に無かったとき（捨てた・死んだ）は渡さない（増えないように）
# 落ちている斧の形の武器は、拾って手に持てば player/dual/fix で双剣の見た目に直る
# @s ＝ プレイヤー

execute store result score #n twm_tmp run clear @s minecraft:warped_fungus_on_a_stick[minecraft:item_model="test_weapon_motion:weapon"]
scoreboard players set @s twm_state 0
tag @s remove twm_dual
execute if score #n twm_tmp matches 1.. run function test_weapon_motion:give
