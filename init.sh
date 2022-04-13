 #!/bin/bash
echo Welcome to the Kruyerl NeoVIM config script

while test $selection -eq 4
do 

echo Options:
echo 1: Install 
echo 2: Update
echo 3: Uninstall 

read selection

## case install: 
if test $selection -eq 1 
then
   rm -f ~/.config/nvim
   ln -s ~/.dotfiles/nvim ~/.config/
   echo installation completed successfully.
fi 

## case Update:
if test $selection -eq 2 
then
    cd ~/.dotfiles/nvim 
    git pull
fi 

## case uninstall
if test $selection -eq 3 
then
    echo Are you sure you would like to Uninstall the Kruyerl NeoVIM config? y/n
    read confirmation
    if test $confirmation = "y"
    then
        $rm -f ~/.config/nvim
        echo Uninstall was successfully completed.
    else
        echo Uninstall aborted.
    fi
fi


done

echo exiting config script

