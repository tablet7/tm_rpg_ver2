#> tm_rpg:system/buff/objectives

# バフの仕組みで使うスコアを作る関数。tm_rpg:reload から呼ばれる
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

# 一番早く切れる時刻（gametime）。バフが1つも無いときは空
scoreboard objectives add buff_next dummy

# スキルのバフの合計（stutas/buff_add が毎 tick ステータスに足す。buff_next が入っている相手だけ）
scoreboard objectives add skill_hp_buff dummy
scoreboard objectives add skill_mp_buff dummy
scoreboard objectives add skill_hp_rage_buff dummy
scoreboard objectives add skill_mp_rage_buff dummy
scoreboard objectives add skill_armor_buff dummy
scoreboard objectives add skill_magicarmor_buff dummy
scoreboard objectives add skill_pattack_buff dummy
scoreboard objectives add skill_mattack_buff dummy
scoreboard objectives add skill_cooltime_buff dummy
scoreboard objectives add skill_sustain_buff dummy
scoreboard objectives add skill_sustainP_buff dummy
scoreboard objectives add skill_critper_buff dummy
scoreboard objectives add skill_critdamage_buff dummy
scoreboard objectives add skill_job_buff dummy
scoreboard objectives add skill_evasion_buff dummy
scoreboard objectives add skill_luck_buff dummy

# ポーションのバフ（値と、切れる時刻）
scoreboard objectives add potion_hp_buff dummy
scoreboard objectives add potion_hp_buff_end dummy
scoreboard objectives add potion_mp_buff dummy
scoreboard objectives add potion_mp_buff_end dummy
scoreboard objectives add potion_hp_rage_buff dummy
scoreboard objectives add potion_hp_rage_buff_end dummy
scoreboard objectives add potion_mp_rage_buff dummy
scoreboard objectives add potion_mp_rage_buff_end dummy
scoreboard objectives add potion_armor_buff dummy
scoreboard objectives add potion_armor_buff_end dummy
scoreboard objectives add potion_magicarmor_buff dummy
scoreboard objectives add potion_magicarmor_buff_end dummy
scoreboard objectives add potion_pattack_buff dummy
scoreboard objectives add potion_pattack_buff_end dummy
scoreboard objectives add potion_mattack_buff dummy
scoreboard objectives add potion_mattack_buff_end dummy
scoreboard objectives add potion_cooltime_buff dummy
scoreboard objectives add potion_cooltime_buff_end dummy
scoreboard objectives add potion_sustain_buff dummy
scoreboard objectives add potion_sustain_buff_end dummy
scoreboard objectives add potion_sustainP_buff dummy
scoreboard objectives add potion_sustainP_buff_end dummy
scoreboard objectives add potion_critper_buff dummy
scoreboard objectives add potion_critper_buff_end dummy
scoreboard objectives add potion_critdamage_buff dummy
scoreboard objectives add potion_critdamage_buff_end dummy
scoreboard objectives add potion_job_buff dummy
scoreboard objectives add potion_job_buff_end dummy
scoreboard objectives add potion_evasion_buff dummy
scoreboard objectives add potion_evasion_buff_end dummy
scoreboard objectives add potion_luck_buff dummy
scoreboard objectives add potion_luck_buff_end dummy

# スキルごとの枠（切れる時刻 buff_e_<id>、足した値 buff_v_<id>_<ステータス>）
## test1（テスト用1（物理攻撃））
scoreboard objectives add buff_e_test1 dummy
scoreboard objectives add buff_v_test1_pattack dummy
## test2（テスト用2（物理攻撃・物理防御・最大HP））
scoreboard objectives add buff_e_test2 dummy
scoreboard objectives add buff_v_test2_pattack dummy
scoreboard objectives add buff_v_test2_armor dummy
scoreboard objectives add buff_v_test2_hp dummy
