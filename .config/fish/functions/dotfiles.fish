function dotfiles
    /usr/bin/git \
    	--git-dir=$XDG_DATA_HOME/dotfiles \
    	--work-tree=$HOME \
    	$argv
end
