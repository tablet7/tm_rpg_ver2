#> tm_rpg:enemy/skill/wolf_roar

# ボス「ガーディアンウルフ」が技「咆哮」を使う入口。ボスのリグの咆哮の行動（12 tick 目）から、本体の当たり判定（core）として呼ばれる
# 予兆は付けない（理由: ダメージが無い。周りのプレイヤーを吹き飛ばすだけ）
# 半径 10 マス以内のプレイヤーを、ボスから遠ざけるように強く吹き飛ばす（player/skill/wolf_roar/fire）
#   例: execute as <ボスの core> at <ボスの足元> run function tm_rpg:enemy/skill/wolf_roar
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ ボスの足元の中心

function tm_rpg:player/skill/wolf_roar/fire
