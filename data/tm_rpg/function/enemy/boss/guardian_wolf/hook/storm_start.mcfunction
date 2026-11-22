#> tm_rpg:enemy/boss/guardian_wolf/hook/storm_start

# 第2形態の嵐を始める。hook/tick から、見た目が第2形態に替わった tick（HP 半分の咆哮で吠える瞬間）に一度だけ呼ばれる
# 天候を雷雨にし、形態が変わる咆哮の稲妻の 1 本目を落とす（2〜5 本目は hook/tick が 5 tick ごとに）
# @s ＝ マスター（at @s）

scoreboard players set @s gw_storm 1
scoreboard players set @s gw_bolt 0
# 天候を雷雨にする（ゲーム内の 1 日 ＝ 20 分。定期の雷のたびに hook/tick が延ばす）。片付けの hook/end で晴れに戻す
weather thunder 1d
function tm_rpg:enemy/boss/guardian_wolf/hook/storm_bolt
