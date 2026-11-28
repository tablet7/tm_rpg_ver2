#> tm_workbench:test/dialog_open

# 確認用の掲示板（機能 7）の最初の画面。gen/dialog/open から呼ばれる（中身が変わらない画面は、関数に直接書く）
# @s ＝ プレイヤー

dialog show @s {type:"minecraft:multi_action",title:"確認用の掲示板",\
  body:{type:"minecraft:plain_message",contents:"共通部分の確認用。ボタンを押すとチャットに出る"},\
  columns:2,\
  actions:[{label:"押してみる",action:{type:"minecraft:run_command",command:"trigger gui_act set 700001"}},\
    {label:"所持金を出す",action:{type:"minecraft:run_command",command:"trigger gui_act set 700002"}}]}
