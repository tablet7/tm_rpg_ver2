#> tm_workbench:gui/chest/close

# トロッコを片付ける。中のプレイヤーの物（置く場所の物も、ほかの枠に入った物も）を全部返してから、何も落とさずに消す
# gui/chest/hide・show（持ち主の足元に返す）・on_open・sweep から呼ばれる
# 返す物は、持ち主だけが拾える落とし物になる（gen/chest/return_all）。持ち主がその場にいなくても、ほかの人は拾えない
# @s ＝ トロッコ（いる場所 ＝ 返す物を出す場所）

function tm_workbench:gen/chest/return_all
function tm_workbench:gui/chest/discard
