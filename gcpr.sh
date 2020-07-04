# emojiType of commit
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


currentBranch=$(git branch --show-current)

# convert to space to dash
noDashedString=$(sed "s/_/ /g" <<< $str)

git push origin $currentBranch

gh pr create -t "$noDashedString $slectedEmoji" -b "Linked :link: branch $currentBranch"

gh pr view --web