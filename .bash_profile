#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -d /usr/bin/vendor_perl ]] && export PATH=$PATH:/usr/bin/vendor_perl
[[ -d ~/.gem/ruby/2.2.3/bin ]] && export PATH=$PATH:$HOME/.gem/ruby/2.2.3/bin
[[ -d ~/bin ]] && export PATH=$PATH:$HOME/bin
export BROWSER="firefox"
export EDITOR="vim"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

eval $(keychain --eval --agents ssh -Q --quiet gid_rsa)

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

