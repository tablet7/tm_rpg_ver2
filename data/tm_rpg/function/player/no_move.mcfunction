#> tm_rpg:player/no_move

# プレイヤーが動いていないときの処理。player/main から呼ばれる
# インベントリのスロット17にステータス表示用の本、スロット26に資源表示用の紙、スロット35に設定表示用のレッドストーントーチを用意し、内容を更新する
# @s ＝ プレイヤー

# status表示用の紙を用意
execute unless items entity @s container.17 * run item replace entity @s container.17 with book[custom_data={is_status_paper:1b},item_name='STATUS'] 1 
# status表示
execute if items entity @s container.17 book[custom_data='{is_status_paper:1b}'] run item modify entity @s container.17 tm_rpg:update_status_lore

# resource表示用の紙を用意
execute if score @s resource_page matches 1 unless items entity @s container.26 * run item replace entity @s container.26 with paper[custom_data={is_resource_paper:1b},item_name='資源(1/2)'] 1 
# resource表示
execute if score @s resource_page matches 1 if items entity @s container.26 paper[custom_data='{is_resource_paper:1b}'] run item modify entity @s container.26 tm_rpg:resource/update_resource_lore1

# 設定
execute unless items entity @s container.35 * run item replace entity @s container.35 with redstone_torch[custom_data={is_setting_paper:1b},item_name='設定'] 1 

function tm_rpg:player/setting_storage

# 設定表示
execute if items entity @s container.35 redstone_torch[custom_data='{is_setting_paper:1b}'] run item modify entity @s container.35 tm_rpg:setting/update_setting_lore

# 1. フェイクプレイヤー「System」のスコア「abcde」をストレージに一時格納
#execute store result storage my_namespace:data temp.kihon int 1 run scoreboard players get System abcde

# 2. 対象スロット（container.17）のカスタムデータ「kihon」に直接代入
#execute if items entity @s container.17 * run data modify entity @s Inventory[{Slot:17b}].components."minecraft:custom_data".kihon set from storage my_namespace:data temp.kihon
