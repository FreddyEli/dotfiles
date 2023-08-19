#!/bin/bash
find_repo_root()
{
  until [ -d ".git/" ]
  do 
      cd ..
  done
  pwd
}

update_config()
{
    regex="$(grep $1 config_list | awk '{print $2}')"
#echo "$regex"
list=$(ls $HOME/.config/$1 | grep -E "$regex")

for file in $list
do
[ -d $REPO_ROOT/config/$1/ ]  || mkdir $REPO_ROOT/config/$1/ 
cp -r $HOME/.config/$1/$file $REPO_ROOT/config/$1/
done


indentation="    "
while IFS= read -r item; do
    echo "$indentation$item"
done <<< "$list"
echo ""

}

echo $HOME
REPO_ROOT=$(find_repo_root)
echo $REPO_ROOT
echo ""

# .config
for program in $(awk '{print $1}' config_list)
do 
echo $program
[ -d $HOME/.config/$program ]  && update_config "$program" #|| echo "$program not found" && echo "$program">> update_fail
done

 ## lf (ctpv ueberzeugcpp)
 ## nvim
 ## qutebrowser

#.zshrc
cp $HOME/.zshrc $REPO_ROOT/

#.local/bin
if [ -d $HOME/.local/bin ]; then 
for i in $(cat script_list)
 do 
 cp -r $HOME/.local/bin/$i $REPO_ROOT/bin/
 done
else
 echo ".local/bin/ not found" >> update_fail
fi


