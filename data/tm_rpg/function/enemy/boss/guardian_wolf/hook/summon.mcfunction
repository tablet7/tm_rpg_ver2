#> tm_rpg:enemy/boss/guardian_wolf/hook/summon

# ボス「ガーディアンウルフ」を召喚したときの処理（手で書いた関数。リグ定義の hooks.summon）。guardian_wolf/summon の最後に呼ばれる
# 第2形態の嵐（天候・稲妻・定期の雷）に使うスコアを作り、0 にする
# @s ＝ マスター（at @s）

# gw_storm: 0 ＝ 嵐の前、1 ＝ 嵐のあいだ（雷雨にした。片付けの hook/end で晴れに戻す）
scoreboard objectives add gw_storm dummy
# gw_bolt: 嵐が始まってからの tick（形態が変わる咆哮の稲妻と、5 秒ごとの定期の雷のタイミング）
scoreboard objectives add gw_bolt dummy
scoreboard players set @s gw_storm 0
scoreboard players set @s gw_bolt 0
