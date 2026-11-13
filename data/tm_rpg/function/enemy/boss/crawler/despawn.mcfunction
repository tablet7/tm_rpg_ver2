#> tm_rpg:enemy/boss/crawler/despawn

# crawler を演出なしで片付ける。召喚の直前、離脱時、撃破時に呼ばれる

kill @e[type=#tm_rpg:crawler_part,tag=crawler]
kill @e[type=minecraft:marker,tag=crawler]
