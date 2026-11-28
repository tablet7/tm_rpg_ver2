#> tm_workbench:load

# 鍛冶台・クラフト・食事・醸造・ショップ・クエスト受注（tm_workbench）のスコアを作る。main:reload から呼ばれる
# 設計: md/gui_md/design.md

# 共通部分（gui/）
function tm_workbench:gui/load
# スコアで持つ素材・敵の落とし物（mat/）。gui_tmp を使うので gui/load のあと
function tm_workbench:mat/load
# 鍛冶台（kaji/）
function tm_workbench:kaji/load
