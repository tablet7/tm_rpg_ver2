#> tm_workbench:test/dialog_gold

# 確認用のボタン（700002）: 所持金を入れた dialog を storage で組み立てて、gui/show で出す。gen/act_run から呼ばれる
# @s ＝ プレイヤー

data modify storage tm_workbench:gui dialog set value {type:"minecraft:notice",title:"所持金（確認用）",body:{type:"minecraft:plain_message",contents:{translate:"所持金: %s G",with:[0]}}}
execute store result storage tm_workbench:gui dialog.body.contents.with[0] int 1 run scoreboard players get @s gold
function tm_workbench:gui/show with storage tm_workbench:gui
