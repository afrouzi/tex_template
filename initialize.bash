# This file changes the parent folder name to your project's name and initializes a git repository in the folder
# To run the file: enter the following command in terminal: 'source ./initialize.bash'
echo "Enter your project name:"
read PROJECT_NAME

cd ..
mv tex_template $PROJECT_NAME

cd $PROJECT_NAME
rm README.md
[ -d .git ] && rm -r -f .git 
git init 
echo "*.bash" >> .gitignore
git add -A 
git commit -m "init commit" -a
code . -r
rm initialize.bash
