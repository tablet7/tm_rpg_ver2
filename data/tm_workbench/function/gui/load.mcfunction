#> tm_workbench:gui/load

# 共通部分（tm_workbench:gui/）のスコアを作る。tm_workbench:load から呼ばれる
# 説明書: md/gui_md/common.md、設計: md/gui_md/design.md

# dialog のボタン（trigger。チャットから手で打てるので、gui/act で確かめ直す）
scoreboard objectives add gui_act trigger
# 機能の番号（interaction・鍛冶台などの display・トロッコ・プレイヤー）・どの店か・dialog のページ
scoreboard objectives add gui_type dummy
scoreboard objectives add gui_id dummy
scoreboard objectives add gui_page dummy
# トロッコ: 持ち主の ent_id・今の画面・画面の物の数・最後に tp された時刻
scoreboard objectives add gui_owner dummy
scoreboard objectives add gui_screen dummy
scoreboard objectives add gui_n dummy
scoreboard objectives add gui_cart_time dummy
# 持ち主の UUID（int 4 つ。プレイヤーとトロッコ。返す物を持ち主だけが拾えるようにする）
scoreboard objectives add gui_u0 dummy
scoreboard objectives add gui_u1 dummy
scoreboard objectives add gui_u2 dummy
scoreboard objectives add gui_u3 dummy
# 計算用（#act・#type・#screen・#gui・#free など）。tm_rpg の temp は使わない（ボタンの処理から tm_rpg の関数を呼ぶと上書きされるため）
scoreboard objectives add gui_tmp dummy
scoreboard players set #100000 gui_tmp 100000
