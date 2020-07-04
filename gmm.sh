currentBranch=$(git branch --show-current)

git push origin $currentBranch

git checkout master

git pull origin master 

git merge $currentBranch

git push origin master 