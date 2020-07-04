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

# read input
read -p 'String to dash String: ' str

str=${str:-0} 

# Commit and push
if [ "$str" == 0 ]
then 
   echo "Please provide name for branch"
   exit
fi

# convert to space to dash
dashedString=$(sed "s/ /_/g" <<< $str)

git stash 

read -p 'Create branch current 1 (0 from master) :' fromBranch

# default value set 
fromBranch=${fromBranch:-0} 

if [ "$fromBranch" == 0 ]
then 
   git checkout master  

   git pull origin master
fi

git checkout -b $dashedString

filename='Changelog.md' 
echo "Linked $dashedString -> $(date) " >> $filename

git add .

git commit -am " :tada: init $emjArr[$emojiType]"

git push origin $dashedString

gh pr create -t "$str $emjArr[$emojiType]" -b "Linked :link: branch $dashedString"

gh pr view --web