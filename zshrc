source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Tell Antigen that you're done.
antigen apply

PROMPT="%B%F{56}╭──%f%b%B%F{56}{%f%b%B%F{87}%n%f%b%B%F{56}@%f%b%B%F{104}%m%f%b%B%F{56}}%f%b%B%F{56}─%f%b%B%F{56}(%f%b%B%F{39}%~%f%b%B%F{56})%f%b%B%F{56}─%f%b%B%F{56}[%f%b%B%F{146}%T%f%b%B%F{56}]%f%b%B%F{56}"$'\n'"╰─%f%b%B%F{87}λ%f%b "

# opam configuration
[[ ! -r /home/vynnsounet/.opam/opam-init/init.zsh ]] || source /home/vynnsounet/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

export EDITOR='/bin/vim'
export VISUAL='/bin/vim'

function copyfile(){
	cat $1 | xsel -b
}

#counts filenames
num=0
function download(){
	wget -q $1 -P ~/downloads/
	num=$((num+1))
}
alias bat="batcat --theme TwoDark"
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/vynns/.antigen/bundles/robbyrussell/oh-my-zsh/lib:/home/vynns/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git:/home/vynns/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku:/home/vynns/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip:/home/vynns/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein:/home/vynns/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found:/home/vynns/.antigen/bundles/zsh-users/zsh-syntax-highlighting:/home/vynns/.antigen/bundles/zsh-users/zsh-autosuggestions:/usr/share/dotnet
