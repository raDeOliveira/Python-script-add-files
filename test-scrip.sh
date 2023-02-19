echo ===============================================================
echo ++ Hello. This is a script to upload GIT repositories faster ++
echo ===============================================================
echo ""

# init new git repo
echo Initiating an empty Git Repository...
sleep 2
git init
echo "==========================================="
echo ""

# add files to repo
echo Adding all files to Repository...
sleep 2
git add --a
echo "==========================================="
echo ""

# enter remote uri
read -p "`echo -e 'Please add your URi Remote Repository: \n\b'`" remoteRepo
sleep 2
echo "==========================================="
echo ""

# add files to remote uri
echo Adding...
sleep 2
git remote add origin $remoteRepo

# make commit
read -p "`echo -e 'Add your commit: \n\b'`" commitMsg
sleep 2
git commit -S -m "$commitMsg"

# push changes
git push -u origin master
$SHELL