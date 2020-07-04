# type of commit
read -p 'feature -> 1 : (0 bug) :' type

# default value set
env=${type:-0}
 
# production or test
if [ "$type" == 0 ]
then
  type=':bug: '
elif [ "$type" == 1 ]
then
  type=':bulb:'
else
  type=':moneybag:'
fi


# read input
read -p 'Commit Msg: ' msg

# Commit and push
if [ "$msg" == 0 ]
then 
   echo "Please provid commit message"
   exit
fi

git add .

git commit -am "${type} ${msg}"

git push origin $(git branch --show-current)