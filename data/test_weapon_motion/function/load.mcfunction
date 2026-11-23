#> test_weapon_motion:load

# 変形武器のテスト（双剣 ⇔ 斧）・スキンの腕のテスト・大鎌のテスト・片手剣のテスト・二刀流のテスト・刀のテストで使うスコアを作る。main:reload から呼ばれる
# 説明書: md/weapon_md/test_weapon_motion.md

# 右クリックの検知（歪んだキノコ付きの棒。オフハンド・メインハンドのどちらで使っても増える）
scoreboard objectives add twm_use minecraft.used:minecraft.warped_fungus_on_a_stick
# 状態（0 = 双剣、1 = 合体中、2 = 斧、3 = 振り下ろし中、4 = 分離中、5 = 分離の受け渡し）
scoreboard objectives add twm_state dummy
# 今のコマ（リソースパックのモデルの番号。0〜19 = 合体、20〜41 = 振り下ろし、50 = 腕だけ）
scoreboard objectives add twm_frame dummy
# 偽物の腕の色（RGB の整数。give で渡すときに使う。無ければ初期の色）
scoreboard objectives add twm_skin dummy
scoreboard objectives add twm_sleeve dummy
# 計算用（#use・#frame・#skin・#sleeve・#n）
scoreboard objectives add twm_tmp dummy
# スキンの腕のテスト（skin_arm/give）: 1 = 細い腕（Alex 型）のスキン。それ以外 = 太い腕
scoreboard objectives add twm_slim dummy
# 大鎌のテスト（scythe/give）
# 状態（0 = 構え、1 = 振り下ろし、2 = 引き裂き、3 = 引き裂いたあと止まる、4 = 構えに戻る）
scoreboard objectives add twm_sc dummy
# 今のコマ（0 = 構え、1〜12 = 振り下ろし、13〜20 = 引き裂き、21〜29・31〜39 = 構えに戻る）
scoreboard objectives add twm_sc_f dummy
# 最初の右クリックからの tick 数（引き裂きの受付時間）・引き裂いたあと止まっている tick 数
scoreboard objectives add twm_sc_t dummy
# 振り下ろしの途中に押された右クリック（1 = 12 コマに着いたら引き裂く）
scoreboard objectives add twm_sc_q dummy
# 片手剣のテスト（sword/give）
# 状態（0 = 構え、1 = 技の途中、2 = 次の右クリックを待つ、3 = 構えに戻る）
scoreboard objectives add twm_sw dummy
# 今のコマ（0 = 構え、1〜6・7〜12・13〜20・21〜32 = 1〜4撃目、33〜38・40〜45・47〜52・54〜61 = 1〜4撃目のあと構えに戻る）
scoreboard objectives add twm_sw_f dummy
# 何撃目か（1〜4）
scoreboard objectives add twm_sw_n dummy
# 技の終わりのコマのまま、次の右クリックを待っている tick 数
scoreboard objectives add twm_sw_t dummy
# 技の途中に押された右クリック（1 = 今の技が終わったら次の技へ）
scoreboard objectives add twm_sw_q dummy
# 二刀流のテスト（dual_sword/give）
# 状態（0 = 構え、1 = 技の途中、2 = 次の右クリックを待つ、3 = 構えに戻る）
scoreboard objectives add twm_ds dummy
# 今のコマ（0 = 構え、1〜6・7〜11・12〜16・17〜23・24〜29・30〜41 = 1〜6撃目、42〜・49〜・56〜・63〜・71〜・79〜 = 1〜6撃目のあと構えに戻る）
scoreboard objectives add twm_ds_f dummy
# 何撃目か（1〜6）
scoreboard objectives add twm_ds_n dummy
# 技の終わりのコマのまま、次の右クリックを待っている tick 数
scoreboard objectives add twm_ds_t dummy
# 技の途中に押された右クリック（1 = 今の技が終わったら次の技へ）
scoreboard objectives add twm_ds_q dummy
# 刀のテスト（katana/give）
# 動き（0 = 構え、1 = 技の途中、2 = 次の右クリックを待つ、3 = 構えに戻る）
scoreboard objectives add twm_kt dummy
# 構え（0 = 納刀状態、1 = 抜刀状態）
scoreboard objectives add twm_kt_s dummy
# 今のコマ（0 = 納刀の構え、1〜32 = 納刀の1〜4撃目、33 = 抜刀の構え、34〜73 = 抜刀の1〜5撃目、77〜119 = 構えに戻る）
scoreboard objectives add twm_kt_f dummy
# 何撃目か（納刀 1〜4、抜刀 1〜5）
scoreboard objectives add twm_kt_n dummy
# 次の右クリックを待っている tick 数
scoreboard objectives add twm_kt_t dummy
# 技の途中に押された右クリック（1 = 今の技が終わったら次の技へ）
scoreboard objectives add twm_kt_q dummy
# ヒットストップの残り tick 数（居合一閃が当たる瞬間・鍔鳴りでコマを止める）
scoreboard objectives add twm_kt_h dummy
# 納刀斬りのあと、次の技（納刀の1撃目）を受け付けない残りの tick 数（20 から減らす）
scoreboard objectives add twm_kt_c dummy
# 戦技（シフト＋右クリック。sengi/common/use）のクールタイムの残り tick 数。twm_sengi_cd ＝ 戦技1（sengi）、twm_sengi2_cd ＝ 戦技2（sengi2）
scoreboard objectives add twm_sengi_cd dummy
scoreboard objectives add twm_sengi2_cd dummy
# 武器を持っているホットバーの枠（SelectedItemSlot。hold/slot_changed）。同じ種類の別の武器へ持ち替えたら構えから始める
scoreboard objectives add twm_slot dummy
