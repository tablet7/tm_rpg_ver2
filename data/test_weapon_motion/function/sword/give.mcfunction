#> test_weapon_motion:sword/give

# 片手剣のテスト用アイテムを渡す。チャットから手で実行する: /function test_weapon_motion:sword/give
# メインハンドに持つと、一人称で自分のスキンの腕が片手剣を構える。右クリックで 袈裟斬り → 返しの横薙ぎ → 突き → 両手の唐竹割り の4連撃
# 細い腕（Alex 型）のスキンなら、先に /scoreboard players set @s twm_slim 1 をしてから渡す（太い腕に戻すなら 0）
# 説明書: md/weapon_md/test_weapon_motion/sword.md
# @s ＝ プレイヤー

loot give @s loot test_weapon_motion:sword
