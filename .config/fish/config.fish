if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    set user hooke

    set greetings \
        " [EN] Hello, $user!" \
        " [ZH] 你好，$user！" \
        " [ES] ¡Hola, $user!" \
        " [AR] مرحبا، $user!" \
        " [FR] Bonjour, $user !"

    set greet (random choice $greetings)
    echo $greet
end

# XDG Base Directory
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_STATE_HOME $HOME/.local/state

# Go
set -x GOPATH $XDG_DATA_HOME/go
set -x PATH $GOPATH/bin $PATH

# Rust
set -x CARGO_HOME $XDG_DATA_HOME/cargo
set -x PATH $CARGO_HOME/bin $PATH
