#> main:reload

# /reload 時に実行される関数。minecraft:load タグから呼ばれ、tm_rpg:reload を実行してリロード完了を全員に通知する

#function
function tm_rpg:reload
#reloadの確認テキスト
tellraw @a {"text":"{tm_rpg} Reloaded"}

function test_weapon_motion:load
tellraw @a {"text":"{test_weapon_motion} Reloaded"}

function tm_workbench:load
tellraw @a {"text":"{tm_workbench} Reloaded"}