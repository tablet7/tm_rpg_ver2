#> tm_rpg:player/skill/common/snap_ground

# 設置物を、そのマスの地面の高さに合わせて上下に動かす関数（共通）。設置物のスキルの skill2（出したばかりの設置物）から呼ぶ
# 出すときは、マスの中心（align xyz positioned ~0.5 ~0.5 ~0.5）に、プレイヤーの足元の高さで出しておくこと
# 「地面」＝ 下のマスが通れないブロック（#minecraft:replaceable でない）で、そのマスが通れるブロック
# 調べる順番: 今の高さ → 1上 → 1下 → 2上 → 2下 → 3下 → 4下（近い高さを先に。同じ近さなら上を先）
# どの高さにも地面が無い（高い壁・深い穴）ときは、動かさない
# 調べる高さを足すときは、同じ形の行を足す
# @s ＝ 設置物（実行位置は設置物の位置）

execute unless block ~ ~-1 ~ #minecraft:replaceable if block ~ ~ ~ #minecraft:replaceable run return 0
execute unless block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run return run tp @s ~ ~1 ~
execute unless block ~ ~-2 ~ #minecraft:replaceable if block ~ ~-1 ~ #minecraft:replaceable run return run tp @s ~ ~-1 ~
execute unless block ~ ~1 ~ #minecraft:replaceable if block ~ ~2 ~ #minecraft:replaceable run return run tp @s ~ ~2 ~
execute unless block ~ ~-3 ~ #minecraft:replaceable if block ~ ~-2 ~ #minecraft:replaceable run return run tp @s ~ ~-2 ~
execute unless block ~ ~-4 ~ #minecraft:replaceable if block ~ ~-3 ~ #minecraft:replaceable run return run tp @s ~ ~-3 ~
execute unless block ~ ~-5 ~ #minecraft:replaceable if block ~ ~-4 ~ #minecraft:replaceable run return run tp @s ~ ~-4 ~
