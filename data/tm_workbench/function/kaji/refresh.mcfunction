#> tm_workbench:kaji/refresh

# 鍛冶台の表示の枠を、今の画面と置いた物で置き直す。gen/chest/s<画面>/enter・check（screens.json の refresh）と kaji/changed から呼ばれる
# @s ＝ トロッコ。持ち主に tag kaji_user を付けて、持ち主のスコア（素材・gold・Lv・運）を読む

scoreboard players operation #me gui_tmp = @s gui_owner
execute as @a if score @s ent_id = #me gui_tmp run tag @s add kaji_user
function tm_workbench:kaji/refresh_in
tag @a remove kaji_user
