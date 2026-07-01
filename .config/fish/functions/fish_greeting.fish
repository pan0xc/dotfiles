function fish_greeting
    set user panic

    set greetings \
        "  [EN] Hello, $user!" \
        "  [ZH] 你好，$user！" \

    set greet (random choice $greetings)
    echo $greet
end
