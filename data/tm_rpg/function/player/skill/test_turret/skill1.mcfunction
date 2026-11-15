#> tm_rpg:player/skill/test_turret/skill1

# スキル「testタレット（剣の一斉射撃を撃つタレットを置く）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す
# 前方2マスの地面に、浮いたディスペンサーのタレットを「15 ＋ 持続時間（sustain_time）」秒置く（main_projectile/turret）
# タレットは 4 秒ごとに、16 マス以内の一番近い敵の方を向いて（いなければ向きはそのまま）、test剣の一斉射撃（test_sword_volley/fire）を撃つ
# 同じ人のこのタレットは1つだけ（新しく置くと、古いのが消える）
#   skill2 … タレットの設定（撃つ間隔・1回目までの tick・見た目）
#   skill3 … 撃つ（turret/tick から呼ばれる）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（タレットが置いた瞬間の値を覚えて、撃つたびに使う）
function tm_rpg:player/skill/skill_damage

# 本体（敵も enemy/skill/test_turret から使う）
function tm_rpg:player/skill/test_turret/fire

return 1
