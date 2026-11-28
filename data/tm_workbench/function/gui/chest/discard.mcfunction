#> tm_workbench:gui/chest/discard

# トロッコを、何も落とさずに消す。gui/chest/close から呼ばれる（中のプレイヤーの物を返したあと）
# 中身を空にしてから、世界の下へ tp する（世界の下に落ちた物は、次の tick に何も落とさずに消える。kill だと中身がその場に落ちる。試作 1-5）
# 中身を空にするのは1回だけなので、data modify を使う（27 枠を item replace するより短い）
# @s ＝ トロッコ

data modify entity @s Items set value []
tp @s ~ -1000 ~
