echo 'Enter the name of the branch:'
read branch

echo "================================================"
echo "π­ππππ: πππππ πππ πππππππ ππππππ ππππ ππππ ππππβ"
echo "================================================"

if [ -n "$(git log origin/$branch..HEAD)" ];
then
    echo "That is New Changes!! ππππ΄"
    git pull
    composer update
    npm run dev
    echo "Changes pulled successfully!! ππππ’"
    
else
    echo "There is No changes from your team! π‘π‘"
    
fi

if [ -n "$(git diff)" ];
then
    echo "======================================"
    echo "πΊπππππ: ππππ ππππ πππππππ ππ ππππ ππππβ"
    echo "======================================"
    
    git add .
    
    echo 'Enter the commit message:'
    read commit
    
    git commit -m "$commit"
    
    git status
    git push origin $branch
    
    echo "Pushing Changes Successfully!!! ββπππ"
else
    echo "you haven't had any changes to upload it! π₯π₯π₯"
fi

# read


