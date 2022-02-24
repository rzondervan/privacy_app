git config --global user.name "rzondervan"
git config --global user.email "rzondervan@gmail.com"
git config --global push.default matching
git config --global alias.co checkout

git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:rzondervan/privacy_app.git
git push -u origin main
