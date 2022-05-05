#!/bin/bash  

# This file changes the parent folder name to your project's name and initializes a git repository in the folder
# To run the file: enter the following command in terminal: 'sh ./initialize.bash PROJECT_NAME'
if [ -z "$1" ]
  then
    echo "No argument supplied"
    PROJECT_NAME="my_project"
  else
    PROJECT_NAME=$1
fi

cd ..
mv tex_template $PROJECT_NAME

cd $PROJECT_NAME
rm README.md
[ -d .git ] && rm -r -f .git 
mkdir build

# rename main.tex 
mv main.tex $PROJECT_NAME.tex

# reset content/references.bib + create gitignore
echo "*.bash\n*.pdf" >> .gitignore
echo "% !TeX root = ../$PROJECT_NAME.tex" > src/content.tex

# create first commmit
git init 
git submodule add https://github.com/afrouzi/tex_style.git style/
git submodule add https://github.com/afrouzi/tex_references.git references/
git add -A 
git commit -m "init commit" -a
code . -r
rm initialize.bash
