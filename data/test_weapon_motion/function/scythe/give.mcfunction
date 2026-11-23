#> test_weapon_motion:scythe/give

# 大鎌のテスト用アイテムを渡す。チャットから手で実行する: /function test_weapon_motion:scythe/give
# メインハンドに持つと、一人称で自分のスキンの両腕が大鎌を構える。右クリックで振り下ろし、1秒以内にもう一度右クリックで引き裂く
# 細い腕（Alex 型）のスキンなら、先に /scoreboard players set @s twm_slim 1 をしてから渡す（太い腕に戻すなら 0）
# 説明書: md/weapon_md/test_weapon_motion/scythe.md
# @s ＝ プレイヤー

loot give @s loot test_weapon_motion:scythe
