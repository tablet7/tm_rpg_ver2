#> test_weapon_motion:skin_arm/give

# スキンの腕のテスト用アイテムを渡す。チャットから手で実行する: /function test_weapon_motion:skin_arm/give
# メインハンドに持つと、一人称で自分のスキンの両腕が出る（自分の頭を腕の形に引き伸ばし、シェーダーで腕の模様に描き替えている）
# 細い腕（Alex 型）のスキンなら、先に /scoreboard players set @s twm_slim 1 をしてから渡す（太い腕に戻すなら 0）
# 説明書: md/weapon_md/test_weapon_motion/skin_arm.md
# @s ＝ プレイヤー

loot give @s loot test_weapon_motion:skin_arm
