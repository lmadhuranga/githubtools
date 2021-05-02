if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
 
# various command shortcuts
alias cba='source ~/.bashrc'
alias og='ls -ogrt'
alias ll='ls -al'
alias lc='ls -C'
alias halt='start shutdown /s /f '
alias halta='start shutdown /a'
alias reboot='start shutdown /r'
alias dir='ls -lrt' # in case you are a MS-DOS lover :P
alias h='history'
alias p='pwd -P'  # shows the "real" path in bash, not the path via symlinks
alias et='emacs-tty'
alias python=python2.7

# environment
# export PS1='[\u@\h \W]$ ' # Set the command prompt!
EMOJIS=(b🐛 🔥 🌋 🔨 ✔️ 📌 📝 💡 ⭐ ☁️ 👻 ⚡)

EMOJISSTR='b.🐛  f.🔥  v.🌋  h.🔨  c.✔️   p.📌  n.📝  b.💡  s.⭐  k.☁️   g.👻  l.⚡'

# selects a random element from the EMOJIS set
SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};

gitCurntBranch=$(git rev-parse --abbrev-ref HEAD)

s="⚡" 
if [ "\$" == "#" ]
then 
  s="#" exit
fi

# declare the terminal prompt format
export PS1='\n$EMOJISSTR\n\033[33m\w\033[36m (${gitCurntBranch})\n\033[39m\@ $s '

# todo : need to add end of code add new line
# function cleancmd() {
#   echo -e "\n new line added 🔥"
# }

# trap cleancmd EXIT
