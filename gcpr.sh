currentBranch=$(git branch --show-current)

git push origin $currentBranch

gh pr create -t "$currentBranch" -b "Linked :link: branch $currentBranch"