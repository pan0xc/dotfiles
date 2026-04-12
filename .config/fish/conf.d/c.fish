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
