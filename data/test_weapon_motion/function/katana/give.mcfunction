#> test_weapon_motion:katana/give

# 刀のテスト用アイテムを渡す。チャットから手で実行する: /function test_weapon_motion:katana/give
# メインハンドに持つと、一人称で自分のスキンの両腕が刀を構える。最初は納刀状態（左腰の鞘に納めた刀の柄を右手で握る）
# 納刀状態の右クリック: 鞘払い → 鞘打ち下ろし → 鐺突き → 居合一閃（抜いて抜刀状態になる）
# 抜刀状態の右クリック: 袈裟斬り → 横薙ぎ → 突き → 唐竹割り → 納刀斬り（納めて納刀状態に戻る）。納刀斬りを打つまで抜刀状態のまま
# 細い腕（Alex 型）のスキンなら、先に /scoreboard players set @s twm_slim 1 をしてから渡す（太い腕に戻すなら 0）
# 説明書: md/weapon_md/test_weapon_motion/katana.md
# @s ＝ プレイヤー

loot give @s loot test_weapon_motion:katana
