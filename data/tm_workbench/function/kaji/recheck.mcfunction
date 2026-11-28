#> tm_workbench:kaji/recheck

# ボタンを押したとき、置く場所を読み直し、表示を作ったときから変わったかを #changed kaji_tmp に入れる（1 ＝ 変わった）
# kaji/kyouka/do・kaji/kaizou/do・kaji/bunkai/do から呼ばれる。@s ＝ トロッコ

scoreboard players operation #o_has kaji_tmp = @s kaji_has
scoreboard players operation #o_kind kaji_tmp = @s kaji_kind
scoreboard players operation #o_lv kaji_tmp = @s kaji_lv
scoreboard players operation #o_kk kaji_tmp = @s kaji_kyouka
scoreboard players operation #o_res kaji_tmp = @s kaji_res
scoreboard players operation #o_kz kaji_tmp = @s kaji_kaizou
execute store success score #has kaji_tmp if items entity @s container.10 *
scoreboard players operation @s kaji_has = #has kaji_tmp
function tm_workbench:kaji/read
function tm_workbench:kaji/fake
scoreboard players set #changed kaji_tmp 0
execute unless score #o_has kaji_tmp = @s kaji_has run scoreboard players set #changed kaji_tmp 1
execute unless score #o_kind kaji_tmp = @s kaji_kind run scoreboard players set #changed kaji_tmp 1
execute unless score #o_lv kaji_tmp = @s kaji_lv run scoreboard players set #changed kaji_tmp 1
execute unless score #o_kk kaji_tmp = @s kaji_kyouka run scoreboard players set #changed kaji_tmp 1
execute unless score #o_res kaji_tmp = @s kaji_res run scoreboard players set #changed kaji_tmp 1
execute unless score #o_kz kaji_tmp = @s kaji_kaizou run scoreboard players set #changed kaji_tmp 1
