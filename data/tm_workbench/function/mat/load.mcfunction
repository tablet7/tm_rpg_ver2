#> tm_workbench:mat/load

# スコアで持つ素材（強化の素材・クラフトの欠片）と、敵の落とし物のスコアを作る。tm_workbench:load から呼ばれる
# 説明: md/gui_md/materials.md

# 素材（mat_<系統><段階>・mat_craft。gen_gui.py が materials.json から作る）
function tm_workbench:gen/mat/load

# 敵: 落とす系統（1 木・2 石・3 生物・4 宝石。0 なら落とさない）・段階の表（1〜4）
# 召喚の関数が storage tm_rpg:enemy_status data の mat_family・mat_table に書き、tm_rpg:enemy/enemy_set_status がスコアにする
scoreboard objectives add mat_family dummy
scoreboard objectives add mat_table dummy

# 計算用の数（gui_tmp は gui/load が作る）
scoreboard players set #20 gui_tmp 20
