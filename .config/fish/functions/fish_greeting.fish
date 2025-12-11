function fish_greeting
    set user hooke

    set greetings \
        "  [EN] Hello, $user!" \
        "  [ZH] 你好，$user！" \
        "  [ES] ¡Hola, $user!" \
        "  [AR] مرحبا، $user!" \
        "  [FR] Bonjour, $user !"

    set greet (random choice $greetings)
    echo $greet
end
