#> tm_rpg:enemy/skill/test_turret

# 敵がスキル「testタレット」を使う関数。敵の行動の関数から呼ぶ
# 敵の攻撃力（p_attack / m_attack）とクリティカルから player/skill/skill_damage でダメージを計算し、プレイヤーと同じ本体（player/skill/test_turret/fire）を使う
# 出した弾・設置物は tag enemy_shot が付き、プレイヤーにだけ当たる（撃った敵・ほかの敵には当たらない）
# 実行位置・向き ＝ 使う位置・向き（敵の足元と、使う向き）。プレイヤーの方へ撃つときは facing で向きを入れて呼ぶ
#   例: execute as <敵> at @s facing entity @p[distance=..16] feet run function tm_rpg:enemy/skill/test_turret
# @s ＝ スキルを使う敵

# ダメージの値（skills.csv の kihon・per・damage_type・sanshou_type と同じ意味）
#   基本ダメージ / 倍率（%）/ ダメージタイプ（1 物理・2 魔法・3 確定）/ 参照ステータス（1 攻撃力・2 魔法攻撃力）
scoreboard players set @s skillselect_kihon 5
scoreboard players set @s skillselect_per 150
scoreboard players set @s skillselect_damage_type 1
scoreboard players set @s skillselect_sanshou_type 1

function tm_rpg:enemy/skill/start
function tm_rpg:player/skill/skill_damage
function tm_rpg:player/skill/test_turret/fire
function tm_rpg:enemy/skill/end
