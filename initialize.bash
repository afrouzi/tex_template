# This file changes the parent folder name to your project's name and initializes a git repository in the folder
# To run the file: add project name after the equal sign and run the following command in terminal: 'source ./initialize.bash'
PROJECT_NAME=

cd ..
mv tex_template $PROJECT_NAME

cd $PROJECT_NAME
rm -r .git 
git init 
echo "*.bash" >> .gitignore
git add -A 
git commit -m "init commit" -a
code . -r
rm initialize.bash
