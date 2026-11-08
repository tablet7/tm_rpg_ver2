#> tm_rpg:player/no_move

# プレイヤーが動いていないときの処理。player/main から呼ばれる
# インベントリのスロット17にステータス表示用の本を用意し、内容を更新する
# @s ＝ プレイヤー

# status表示用の紙を用意
execute unless items entity @s container.17 * run item replace entity @s container.17 with book[custom_data={is_status_paper:1b},item_name='STATUS'] 1 
# status表示
execute if items entity @s container.17 book[custom_data='{is_status_paper:1b}'] run item modify entity @s container.17 tm_rpg:update_status_lore

# 1. フェイクプレイヤー「System」のスコア「abcde」をストレージに一時格納
#execute store result storage my_namespace:data temp.kihon int 1 run scoreboard players get System abcde

# 2. 対象スロット（container.17）のカスタムデータ「kihon」に直接代入
#execute if items entity @s container.17 * run data modify entity @s Inventory[{Slot:17b}].components."minecraft:custom_data".kihon set from storage my_namespace:data temp.kihon
