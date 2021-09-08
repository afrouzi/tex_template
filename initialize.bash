PROJECT_NAME=working_memory

cd ..
mv tex_template $PROJECT_NAME

cd $PROJECT_NAME
rm -r .git 
git init 
git add -A 
git commit -m "init commit" -a
code . -r