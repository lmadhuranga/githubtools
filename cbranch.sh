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

# git pull origin master

git checkout -b $dashedString


# git push origin dashedString