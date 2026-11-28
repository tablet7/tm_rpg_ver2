#> tm_workbench:gui/dialog/target_is_me

# この interaction を最後に右クリックした人（on target）が tag gui_me の人なら 1 を返す。gui/dialog/open から execute if function で呼ばれる
# @s ＝ interaction

return run execute on target if entity @s[tag=gui_me]
