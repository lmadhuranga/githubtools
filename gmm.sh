currentBranch=$(git branch --show-current)

read -p " ! Merge to Master $currentBranch  yes 1 ( no 0 ) : " type

# default value set
env=${type:-0}
 
# production or test
if [ "$type" == 1 ]
then 
  git push origin $currentBranch

  git checkout master

  git pull origin master 

  git merge $currentBranch

  git push origin master
else
  echo "Abort the merge with"
  exit 
fi
