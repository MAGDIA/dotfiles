#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -d /usr/bin/vendor_perl ]] && export PATH=$PATH:/usr/bin/vendor_perl
[[ -d ~/.gem/ruby/2.3.0/bin ]] && export PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin
[[ -d ~/bin ]] && export PATH=$PATH:$HOME/bin
export BROWSER="firefox"
export EDITOR="vim"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

eval $(keychain -q --nolock --agents ssh,gpg --eval git_rsa 0x1D46E446)

# Load RVM into a shell session *as a function*
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

