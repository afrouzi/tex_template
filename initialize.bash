# This file changes the parent folder name to your project's name and initializes a git repository in the folder
# To run the file: enter the following command in terminal: 'sh ./initialize.bash'
echo "Enter your project name:"
read PROJECT_NAME

cd ..
mv tex_template $PROJECT_NAME

cd $PROJECT_NAME
rm README.md main.pdf
[ -d .git ] && rm -r -f .git 

# rename main.tex 
mv main.tex $PROJECT_NAME.tex

# reset content/references.bib + create gitignore
echo "*.bash\n*.pdf" >> .gitignore
echo "% !TeX root = ../$PROJECT_NAME.tex" > content/body.tex
echo "" > references.bib

# create first commmit
git init 
git add -A 
git commit -m "init commit" -a
code . -r
rm initialize.bash
