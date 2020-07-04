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

git checkout master 

git pull origin master

git checkout -b $dashedString

filename='Changelog.md'
date >> $filename
echo "Linked $dashedString" >> $filename

git add .

git commit -am " :tada: init :balloon:"

git push origin $dashedString

gh pr create -t "$str" -b "Linked :link: branch $dashedString"