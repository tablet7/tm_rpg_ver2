#> tm_rpg:player/no_move

# status表示用の紙を用意
execute unless items entity @s container.17 * run item replace entity @s container.17 with book[custom_data={is_status_paper:1b},item_name='STATUS'] 1 
# status表示
execute if items entity @s container.17 book[custom_data='{is_status_paper:1b}'] run item modify entity @s container.17 tm_rpg:update_status_lore