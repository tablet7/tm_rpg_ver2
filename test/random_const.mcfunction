# mibuti:system\random_const

# 1秒に一回値が変動
# 抽選 tick分散させる
## HP
execute if score System tick matches 1 run function mibuti:system/random_status/hp

## MP
execute if score System tick matches 2 run function mibuti:system/random_status/mp

## HP_RAGE
execute if score System tick matches 3 run function mibuti:system/random_status/hp_rage

## MP_RAGE
execute if score System tick matches 4 run function mibuti:system/random_status/mp_rage

## ARMOR
execute if score System tick matches 5 run function mibuti:system/random_status/armor

## MAGIC_ARMOR
execute if score System tick matches 6 run function mibuti:system/random_status/magic_armor

## P_ATTACK
execute if score System tick matches 7 run function mibuti:system/random_status/p_attack

## M_ATTACK
execute if score System tick matches 8 run function mibuti:system/random_status/m_attack

## COOL_TIME
execute if score System tick matches 9 run function mibuti:system/random_status/cooltime

## JOB_BONUS
execute if score System tick matches 10 run function mibuti:system/random_status/job_bonus

## SUSTAIN_TIME
execute if score System tick matches 11 run function mibuti:system/random_status/sustain_time

## RANGE
execute if score System tick matches 12 run function mibuti:system/random_status/range

## CRIT_PER
execute if score System tick matches 13 run function mibuti:system/random_status/crit_per

## CRIT_DAMAGE
execute if score System tick matches 14 run function mibuti:system/random_status/crit_damage