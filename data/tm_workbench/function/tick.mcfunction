#> tm_workbench:tick

# tm_workbench の毎 tick の処理。main:main から呼ばれる
# 共通部分（dialog のボタン・トロッコ）と、素材のスコアの初期化

function tm_workbench:gui/tick
# 素材のスコア（mat_*）が無い人に 0 を入れる（資源の紙の数字が空にならないように。入れ終わった人は条件で外れる）
execute as @a unless score @s mat_craft matches -2147483648.. run function tm_workbench:gen/mat/init
