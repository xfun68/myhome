#!/usr/bin/env bash

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

[ -f $HOME/.bashrc ] && source $HOME/.bashrc

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/xfwang/.sdkman"
[[ -s "/Users/xfwang/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/xfwang/.sdkman/bin/sdkman-init.sh"

