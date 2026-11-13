#> tm_rpg:player/dash/impulse

# プレイヤーに速度を加える汎用関数。エンチャント tm_rpg:dash_impulse の apply_impulse を使う
# @s ＝ プレイヤー。向きを使うので at @s（または rotated as @s）で呼ぶ
# 入力（@s のスコア。単位は 0.01 ブロック/tick、それぞれ -315〜315）
#   dash_x: 右が +、左が -（プレイヤーの水平の向きが基準）
#   dash_y: 上が +、下が -（ワールドの上下。カメラを上下に向けていても変わらない）
#   dash_z: 前が +、後ろが -（プレイヤーの水平の向きが基準）
# 実際に速度が加わるのは、この tick か次の tick のプレイヤーの処理のとき（エンチャントの tick 効果）
# そのとき、メインハンドに tm_rpg:dash_impulse の付いたアイテムを持っている必要がある
# 速度は今の速度に足される（0.05 ブロック/tick 単位に丸められる）

# 前回の残りを消す
function tm_rpg:player/dash/impulse_reset

# カメラの上下の角度（ピッチ）の sin / cos（1000倍）を #dash_s / #dash_c に求める
execute summon marker run function tm_rpg:player/dash/impulse_pitch

scoreboard players set #2500 temp 2500
scoreboard players set #5000 temp 5000
scoreboard players set #-1000 temp -1000

# apply_impulse の向きはピッチを含むローカル座標 [左, 上, 前] なので、入力を変換する（単位 0.00001 ブロック/tick）
# 左 = -x
scoreboard players operation #dash_l temp = @s dash_x
scoreboard players operation #dash_l temp *= #-1000 temp
# 上 = y*cos + z*sin
scoreboard players operation #dash_u temp = @s dash_y
scoreboard players operation #dash_u temp *= #dash_c temp
scoreboard players operation #dash_t temp = @s dash_z
scoreboard players operation #dash_t temp *= #dash_s temp
scoreboard players operation #dash_u temp += #dash_t temp
# 前 = z*cos - y*sin
scoreboard players operation #dash_f temp = @s dash_z
scoreboard players operation #dash_f temp *= #dash_c temp
scoreboard players operation #dash_t temp = @s dash_y
scoreboard players operation #dash_t temp *= #dash_s temp
scoreboard players operation #dash_f temp -= #dash_t temp

# 0.05 ブロック/tick 単位に四捨五入する: floor((t + 2500) / 5000)（スコアの割り算は小さい方へ切り捨て）
scoreboard players operation #dash_l temp += #2500 temp
scoreboard players operation #dash_l temp /= #5000 temp
scoreboard players operation #dash_u temp += #2500 temp
scoreboard players operation #dash_u temp /= #5000 temp
scoreboard players operation #dash_f temp += #2500 temp
scoreboard players operation #dash_f temp /= #5000 temp

# ビットごとのスコア（dash_l1〜dash_f32）に分ける。エンチャントがそれぞれ 0.05×ビット の速度を足す
function tm_rpg:player/dash/impulse_bits

# エンチャントの発動待ち。発動すると impulse_reset で 0 になる。発動しなかったら impulse_tick が消す
scoreboard players set @s dash_on 3
