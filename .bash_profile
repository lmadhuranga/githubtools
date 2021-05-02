# export PS1='\033[1mBold\033[39m\n\033[2mDim\033[39m\n\033[4mUnderline\033[39m\n\033[5mBlink\033[39m\n\033[8mHidden\033[39m\n\033[0mReset all\033[39m\n\033[21mReset bold\033[39m\n\033[22mReset dim\033[39m\n\033[24mReset underline\033[39m\n\033[25mReset blink\033[39m\n\033[28mReset hidden\033[39m\n\033[39mDefault color\033[39m\n\033[30mBlack\033[39m\n\033[31mRed\033[39m\n\033[32mGreen\033[39m\n\033[33mYellow\033[39m\n\033[34mBlue\033[39m\n\033[35mMagenta\033[39m\n\033[36mCyan\033[39m\n\033[97mWhite\033[39m\n\033[49mDefault bg color\033[39m\n\033[40mBlack bg\033[39m\n\033[41mRed bg\033[39m\n\033[42mGreen bg\033[39m\n\033[43mYellow bg\033[39m\n\033[44mBlue bg\033[39m\n\033[45mMagenta bg\033[39m\n\033[46mCyan bg\033[39m\n\033[107mWhite bg\033[39m\n'
#https://loige.co/random-emoji-in-your-prompt-how-and-why/

# declares an array with the emojis we want to support
EMOJIS=(b🐛 🔥 🌋 🔨 ✔️ 📌 📝 💡 ⭐ ☁️ 👻 ⚡)

EMOJISSTR='b.🐛  f.🔥  v.🌋  h.🔨  c.✔️  p.📌  n.📝  b.💡  s.⭐  k.☁️   g.👻  l.⚡'

# selects a random element from the EMOJIS set
SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};

gitCurntBranch=$(git rev-parse --abbrev-ref HEAD)

s="⚡" 
if [ "\$" == "#" ]
then 
  s="#" exit
fi
 
export alias og='ls -ogrt

# declare the terminal prompt format
export PS1='\n\n$EMOJISSTR\n\033[33m\w\033[36m (${gitCurntBranch})\n\033[39m\@ $s ' 