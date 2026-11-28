##
 # res_cnt.mcfunction
 # 
 #
 # Created by .
##

execute if score @p resource_page matches 1 run return run scoreboard players set @p resource_page 2
execute if score @p resource_page matches 2 run return run scoreboard players set @p resource_page 1
