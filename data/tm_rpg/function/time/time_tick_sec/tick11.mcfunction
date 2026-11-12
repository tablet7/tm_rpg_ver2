#> tm_rpg:time/time_tick_sec/tick11

# 1秒周期の11tick目に実行される処理。tm_rpg:main から呼ばれる

## 矢（地面に刺さった矢を消す。毎tickでなくてよいので1秒に1回）
# 地面に刺さっているかはセレクター引数・predicate で判定できないため nbt を使う
execute as @e[type=arrow,nbt={inGround:1b}] run kill @s
