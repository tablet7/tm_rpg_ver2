#> tm_rpg:system/abnormal/non_debuff

# 状態異常と移動系のデバフ（ジャンプ力・鈍足）をすべて解除する関数（現在は呼び出し元なし）
# @s ＝ 対象のエンティティ

function tm_rpg:system/abnormal/clear
attribute @s jump_strength base reset
effect clear @s slowness
