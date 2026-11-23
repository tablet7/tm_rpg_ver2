#> test_weapon_motion:hold/slot_changed

# 武器を持つホットバーの枠が、前の tick から変わったかを調べる。各武器の tick（sword/tick・scythe/tick・dual_sword/tick・katana/tick）から
# execute if function test_weapon_motion:hold/slot_changed run tag @s remove <武器の持っている印> の形で呼ばれる
# 同じ種類の別の武器へ（ホットバーの切り替えで）直接持ち替えたときも、構えから始めるために使う（持っている印は種類ごとなので、それだけでは分からない）
# SelectedItemSlot は data get でしか読めない（プレイヤーの NBT を読むので少し重い）。武器を持っているプレイヤーの tick の中だけで呼ぶ
# 戻り値: 1 ＝ 変わった（初めて持ったときも 1）、0 ＝ 同じ枠
# @s ＝ プレイヤー

execute store result score #slot twm_tmp run data get entity @s SelectedItemSlot
execute if score @s twm_slot = #slot twm_tmp run return 0
scoreboard players operation @s twm_slot = #slot twm_tmp
return 1
