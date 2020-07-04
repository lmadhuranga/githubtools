# # type of commit
emjArr=( [0]=':bug:' [1]=':bulb:' [2]=':hammer:' [3]=':moneybag:' [4]=':star:' [5]=':fire:' [6]=':cloud:' [7]=':snowflake:' [8]=':volcano:', [9]=':heavy_check_mark:' )

for i in "${!emjArr[@]}"; do
   echo "$i  ${emjArr[$i]}";
done

read -p '(0 bug) :' type

# default value set 
type=${type:-0} 

# read input
read -p 'Commit Msg: ' msg

# Commit and push
if [ "$msg" == 0 ]
then 
   echo "Please provid commit message"
   exit
fi

git add .

fGitMsg="${emjArr[type]} ${msg}"

printf " \n * * * Commit Message * * * \n " 
echo $fGitMsg

git commit -am "${fGitMsg}"

cbranch=$(git branch --show-current)

printf " \n * * * push to remote/$cbranch * * * \n " 

git push origin $cbranch

printf " \n * * * Process end * * * \n " 