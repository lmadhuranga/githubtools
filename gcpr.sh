currentBranch=$(git branch --show-current)

git push origin $dashedString

gh pr create -t "$currentBranch" -b "Linked :link: branch $currentBranch"