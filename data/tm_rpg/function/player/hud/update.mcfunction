#> tm_rpg:player/hud/update

# HP・MP のバーの区切り（hud_hp_g0〜5・hud_mp_g0〜5）を計算し直して HUD を送る関数（マクロなし）
# player/main から、hp・mp・HP_MAX・MP_MAX のどれかが前回（hud_*_old）から変わったときだけ呼ばれる
# バーは 6 区切り × 9 段階 ＝ 54 段階。区切りごとに 0〜9 のスコアにして、フォント tm_rpg:hud_hp / hud_mp の 0〜9 の絵で出す
# @s ＝ プレイヤー

# 今回の値を記録（次の tick で変化を判定するため）
scoreboard players operation @s hud_hp_old = @s hp
scoreboard players operation @s hud_mp_old = @s mp
scoreboard players operation @s hud_hpmax_old = @s HP_MAX
scoreboard players operation @s hud_mpmax_old = @s MP_MAX

# HP: 0〜54 にする（HP が 1 以上なら最低 1）
scoreboard players operation #hud_g temp = @s hp
scoreboard players operation #hud_g temp *= System CONTACT_54
execute if score @s HP_MAX matches 1.. run scoreboard players operation #hud_g temp /= @s HP_MAX
execute if score #hud_g temp matches ..-1 run scoreboard players set #hud_g temp 0
execute if score #hud_g temp matches 55.. run scoreboard players set #hud_g temp 54
execute if score @s hp matches 1.. if score #hud_g temp matches 0 run scoreboard players set #hud_g temp 1
function tm_rpg:player/hud/split_hp

# MP: 0〜54 にする（MP が 1 以上なら最低 1）
scoreboard players operation #hud_g temp = @s mp
scoreboard players operation #hud_g temp *= System CONTACT_54
execute if score @s MP_MAX matches 1.. run scoreboard players operation #hud_g temp /= @s MP_MAX
execute if score #hud_g temp matches ..-1 run scoreboard players set #hud_g temp 0
execute if score #hud_g temp matches 55.. run scoreboard players set #hud_g temp 54
execute if score @s mp matches 1.. if score #hud_g temp matches 0 run scoreboard players set #hud_g temp 1
function tm_rpg:player/hud/split_mp

function tm_rpg:player/hud/show
