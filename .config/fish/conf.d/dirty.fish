# ~/.nv
set -x CUDA_CACHE_PATH "$XDG_CACHE_HOME"/nv

# ~/.java/.userPrefs
set -x _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
