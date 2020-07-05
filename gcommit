# # emojiType of commit
emjArr=(
   [0]=':bug:'
   [1]=':bulb:'
   [2]=':hammer:'
   [3]=':moneybag:'
   [4]=':star:'
   [5]=':fire:'
   [6]=':cloud:'
   [7]=':snowflake:'
   [8]=':volcano:'
   [9]=':heavy_check_mark:'
   [10]=':ghost:'
   [11]=':pushpin:'
   ['bug']=':bug:'
   ['idea']=':bulb:'
   ['fix']=':hammer:'
   ['mondy']=':moneybag:'
   ['star']=':star:'
   ['fire']=':fire:'
   ['cloud']=':cloud:'
   ['snow']=':snowflake:'
   ['volcano']=':volcano:'
   ['check']=':heavy_check_mark:'
   ['ghost']=':ghost:'
   ['pin']=':pushpin:'
)

for i in "${!emjArr[@]}"; do
   echo "$i  ${emjArr[$i]}";
done

read -p '(0 bug) :' emojiType

# default value set 
emojiType=${emojiType:-0} 


slectedEmoji=${emjArr[$emojiType]}

# read input
read -p 'Commit Msg: ' msg

# Commit and push
if [ "$msg" == 0 ]
then 
   echo "Please provid commit message"
   exit
fi

git add . 

printf " \n * * * Commit Message * * * \n \n " 

echo "msg :$msg"

replacedText=$(source ./emojiReplacer.sh "$msg")

echo "replacedText :$replacedText"

git commit -am "$slectedEmoji ${replacedText}"

cbranch=$(git branch --show-current)

printf " \n * * * push to remote/$cbranch * * * \n \n " 

git push origin $cbranch

printf " \n * * * Git commit completed ! * * * \n \n " 