echo 'Enter the name of the branch:'
read branch

echo "================================================"
echo "𝑭𝒊𝒓𝒔𝒕: 𝒄𝒉𝒆𝒄𝒌 𝒇𝒐𝒓 𝒖𝒑𝒅𝒂𝒕𝒆𝒔 𝒄𝒐𝒎𝒊𝒏𝒈 𝒇𝒓𝒐𝒎 𝒚𝒐𝒖𝒓 𝒕𝒆𝒂𝒎❗"
echo "================================================"

if [ -n "$(git log origin/$branch..HEAD)" ];
then
    echo "That is New Changes!! 🚀🚀🚀🔴"
    git pull
    composer update
    npm run dev
    echo "Changes pulled successfully!! 🚀🚀🚀🟢"
    
else
    echo "There is No changes from your team! 🟡🟡"
    
fi

if [ -n "$(git diff)" ];
then
    echo "======================================"
    echo "𝑺𝒆𝒄𝒐𝒏𝒅: 𝒑𝒖𝒔𝒉 𝒚𝒐𝒖𝒓 𝒖𝒑𝒅𝒂𝒕𝒆𝒔 𝒕𝒐 𝒚𝒐𝒖𝒓 𝒕𝒆𝒂𝒎❗"
    echo "======================================"
    
    git add .
    
    echo 'Enter the commit message:'
    read commit
    
    git commit -m "$commit"
    
    git status
    git push origin $branch
    
    echo "Pushing Changes Successfully!!! ✅✅🚀🚀🚀"
else
    echo "you haven't had any changes to upload it! 🟥🟥🟥"
fi

# read


