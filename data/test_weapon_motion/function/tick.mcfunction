#> test_weapon_motion:tick

# 変形武器のテスト・大鎌のテスト・片手剣のテスト・二刀流のテスト・刀のテストの毎 tick の処理。main:main から呼ばれる

# 変形武器を手（メインハンドかオフハンド）に持っているプレイヤーの処理
execute as @a if items entity @s weapon.* *[minecraft:item_model="test_weapon_motion:weapon"] at @s run function test_weapon_motion:player/tick

# 斧の形（合体中〜分離の受け渡し）なのに、メインハンドに武器が無いプレイヤーを双剣の形に戻す
# （ホットバーの切り替え・Q で捨てた・F で持ち替えた・持ち物の画面で動かした・死んだ など）
execute as @a[scores={twm_state=1..}] unless items entity @s weapon.mainhand *[minecraft:item_model="test_weapon_motion:weapon"] run function test_weapon_motion:player/lost

# 武器を手から離したプレイヤーは、次に持ったときにもう一度見た目を直す（player/dual/fix）
execute as @a[tag=twm_dual] unless items entity @s weapon.* *[minecraft:item_model="test_weapon_motion:weapon"] run tag @s remove twm_dual

# 武器の種類は custom_data の weapon_type で見分ける（同じ種類の武器は、見た目が違っても同じ動きの関数を使う。md/weapon_md/weapon_type.md）
# 大型武器（weapon_type:"large"。大鎌など）をメインハンドに持っているプレイヤーの処理（右クリックの回数を読むので、下の消去より前に行う）
execute as @a if items entity @s weapon.mainhand *[custom_data~{weapon_type:"large"}] at @s run function test_weapon_motion:scythe/tick
# 大型武器を手から離したプレイヤーは、次に持ったときに構え（0 コマ）から始める（scythe/start）
execute as @a[tag=twm_sc_hold] unless items entity @s weapon.mainhand *[custom_data~{weapon_type:"large"}] run tag @s remove twm_sc_hold

# 片手武器（weapon_type:"one_hand"。片手剣など）をメインハンドに持っているプレイヤーの処理
execute as @a if items entity @s weapon.mainhand *[custom_data~{weapon_type:"one_hand"}] at @s run function test_weapon_motion:sword/tick
# 片手武器を手から離したプレイヤーは、次に持ったときに構え（0 コマ）から始める（sword/start）
execute as @a[tag=twm_sw_hold] unless items entity @s weapon.mainhand *[custom_data~{weapon_type:"one_hand"}] run tag @s remove twm_sw_hold

# 両手武器（weapon_type:"two_hand"。二刀流など）をメインハンドに持っているプレイヤーの処理
execute as @a if items entity @s weapon.mainhand *[custom_data~{weapon_type:"two_hand"}] at @s run function test_weapon_motion:dual_sword/tick
# 両手武器を手から離したプレイヤーは、次に持ったときに構え（0 コマ）から始める（dual_sword/start）
execute as @a[tag=twm_ds_hold] unless items entity @s weapon.mainhand *[custom_data~{weapon_type:"two_hand"}] run tag @s remove twm_ds_hold

# 刀武器（weapon_type:"katana"。刀など）をメインハンドに持っているプレイヤーの処理
execute as @a if items entity @s weapon.mainhand *[custom_data~{weapon_type:"katana"}] at @s run function test_weapon_motion:katana/tick
# 刀武器を手から離したプレイヤーは、次に持ったときに納刀状態の構え（0 コマ）から始める（katana/start）
execute as @a[tag=twm_kt_hold] unless items entity @s weapon.mainhand *[custom_data~{weapon_type:"katana"}] run tag @s remove twm_kt_hold

# 戦技のクールタイム（tick）を減らす（武器を持っていなくても減る。sengi/common/use）
scoreboard players remove @a[scores={twm_sengi_cd=1..}] twm_sengi_cd 1
scoreboard players remove @a[scores={twm_sengi2_cd=1..}] twm_sengi2_cd 1

# 武器を手に持っていないときの右クリックの回数を消す（ほかの歪んだキノコ付きの棒を使った分）
scoreboard players reset @a[scores={twm_use=1..}] twm_use

