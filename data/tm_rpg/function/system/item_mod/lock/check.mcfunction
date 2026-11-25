#> tm_rpg:system/item_mod/lock/check

# 鍵のかかった改造台の見回り。item_mod/kaizoudai_main から（5tick おきに）、tag kaizou_using の marker で呼ばれる
# 使っている人に tag kaizou_this を付けて lock/check_user で調べ、終わったら外す
# @s ＝ 改造台の marker（ドロッパーの中心）

scoreboard players add @s kaizou_time 5

# 使っている人（ent_id が kaizou_user と同じ人）。11 マスより遠い人は、画面が閉じているので探さない
# バニラは目からドロッパーの箱まで約 8.5 ブロックを超えると画面を閉じる。ここは足元からドロッパーの中心までで測るので、余裕を見て 11 にする
scoreboard players operation #kaizou_user temp = @s kaizou_user
execute as @a[distance=..11] if score @s ent_id = #kaizou_user temp run tag @s add kaizou_this

function tm_rpg:system/item_mod/lock/check_user

tag @a[tag=kaizou_this] remove kaizou_this
