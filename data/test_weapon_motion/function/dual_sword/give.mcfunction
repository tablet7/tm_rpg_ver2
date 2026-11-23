#> test_weapon_motion:dual_sword/give

# 二刀流のテスト用アイテムを渡す。チャットから手で実行する: /function test_weapon_motion:dual_sword/give
# メインハンドに持つと、一人称で自分のスキンの両腕が剣を1本ずつ構える（オフハンドは空けたままでよい）
# 右クリックで 左 袈裟斬り → 左 低い薙ぎ → 右 突き → 左 斬り上げ → 右 逆袈裟 → 交差斬り の6連撃
# 細い腕（Alex 型）のスキンなら、先に /scoreboard players set @s twm_slim 1 をしてから渡す（太い腕に戻すなら 0）
# 剣の形は仮（デザインはこれから決める）。説明書: md/weapon_md/test_weapon_motion/dual_sword.md
# @s ＝ プレイヤー

loot give @s loot test_weapon_motion:dual_sword
