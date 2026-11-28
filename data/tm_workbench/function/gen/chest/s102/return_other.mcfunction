#> tm_workbench:gen/chest/s102/return_other

# 画面 102（機能 1）: 置く場所でない枠に入ったプレイヤーの物を、持ち主だけが拾える落とし物にして今いる場所に出す
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ トロッコ（いる場所 ＝ 持ち主の足元）。出力: #ret gui_tmp ＝ 返した束の数

scoreboard players set #ret gui_tmp 0
function tm_workbench:gui/chest/ret_uuid

execute if items entity @s container.0 * unless items entity @s container.0 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.0
execute if score #r gui_tmp matches 1 run item replace entity @s container.0 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.1 * unless items entity @s container.1 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.1
execute if score #r gui_tmp matches 1 run item replace entity @s container.1 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.2 * unless items entity @s container.2 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.2
execute if score #r gui_tmp matches 1 run item replace entity @s container.2 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.3 * unless items entity @s container.3 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.3
execute if score #r gui_tmp matches 1 run item replace entity @s container.3 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.4 * unless items entity @s container.4 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.4
execute if score #r gui_tmp matches 1 run item replace entity @s container.4 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.5 * unless items entity @s container.5 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.5
execute if score #r gui_tmp matches 1 run item replace entity @s container.5 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.6 * unless items entity @s container.6 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.6
execute if score #r gui_tmp matches 1 run item replace entity @s container.6 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.7 * unless items entity @s container.7 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.7
execute if score #r gui_tmp matches 1 run item replace entity @s container.7 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.8 * unless items entity @s container.8 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.8
execute if score #r gui_tmp matches 1 run item replace entity @s container.8 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.9 * unless items entity @s container.9 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.9
execute if score #r gui_tmp matches 1 run item replace entity @s container.9 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.11 * unless items entity @s container.11 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.11
execute if score #r gui_tmp matches 1 run item replace entity @s container.11 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.12 * unless items entity @s container.12 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.12
execute if score #r gui_tmp matches 1 run item replace entity @s container.12 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.13 * unless items entity @s container.13 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.13
execute if score #r gui_tmp matches 1 run item replace entity @s container.13 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.14 * unless items entity @s container.14 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.14
execute if score #r gui_tmp matches 1 run item replace entity @s container.14 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.15 * unless items entity @s container.15 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.15
execute if score #r gui_tmp matches 1 run item replace entity @s container.15 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.16 * unless items entity @s container.16 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.16
execute if score #r gui_tmp matches 1 run item replace entity @s container.16 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.17 * unless items entity @s container.17 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.17
execute if score #r gui_tmp matches 1 run item replace entity @s container.17 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.18 * unless items entity @s container.18 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.18
execute if score #r gui_tmp matches 1 run item replace entity @s container.18 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.19 * unless items entity @s container.19 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.19
execute if score #r gui_tmp matches 1 run item replace entity @s container.19 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.20 * unless items entity @s container.20 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.20
execute if score #r gui_tmp matches 1 run item replace entity @s container.20 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.21 * unless items entity @s container.21 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.21
execute if score #r gui_tmp matches 1 run item replace entity @s container.21 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.22 * unless items entity @s container.22 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.22
execute if score #r gui_tmp matches 1 run item replace entity @s container.22 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.23 * unless items entity @s container.23 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.23
execute if score #r gui_tmp matches 1 run item replace entity @s container.23 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.24 * unless items entity @s container.24 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.24
execute if score #r gui_tmp matches 1 run item replace entity @s container.24 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.25 * unless items entity @s container.25 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.25
execute if score #r gui_tmp matches 1 run item replace entity @s container.25 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
execute if items entity @s container.26 * unless items entity @s container.26 minecraft:bedrock run function tm_workbench:gui/chest/ret_spawn
execute if score #r gui_tmp matches 1 run item replace entity @e[type=item,tag=gui_drop,distance=..0.1,limit=1] contents from entity @s container.26
execute if score #r gui_tmp matches 1 run item replace entity @s container.26 with minecraft:air
execute if score #r gui_tmp matches 1 run function tm_workbench:gui/chest/ret_done
