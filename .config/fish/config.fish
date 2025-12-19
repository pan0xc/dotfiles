if status is-interactive
    # Commands to run in interactive sessions can go here
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

# C/C++
set -x LIBC_HOME $XDG_DATA_HOME/libc
for d in $LIBC_HOME/*
    if test -d $d/include
        set -xa C_INCLUDE_PATH $d/include
        set -xa CPLUS_INCLUDE_PATH $d/include
    end
    if test -d $d/lib64
        set -xa LIBRARY_PATH $d/lib64
        set -xa LD_LIBRARY_PATH $d/lib64
        set -xa PKG_CONFIG_PATH $d/lib64/pkgconfig
    end
    if test -d $d/lib
        set -xa LIBRARY_PATH $d/lib
        set -xa LD_LIBRARY_PATH $d/lib
        set -xa PKG_CONFIG_PATH $d/lib/pkgconfig
    end
end
