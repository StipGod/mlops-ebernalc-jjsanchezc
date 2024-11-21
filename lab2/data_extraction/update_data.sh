git config --global user.name 'Esteban Bernalc'
git config --global user.email 'stipgod2@gmail.com'
# DEBE CONFIGURAR UNA VARIABLE DE AMBIENTE GH_TOKEN EN Github-Setttings-> Develope Settings -> Personal access token - > Tokens
# LUEGO DENTRO DEL REPOSITORIO: Settings -> Secrets and variables -> Actions -> Secrets -> Environment secrets
git remote set-url origin https://x-access-token:${{ secrets.PAT }}@github.com/edwinm67/mlops-ejemplo2.git
git add .
set +e 
git status | grep modified
if [ $? -eq 0 ]
then
    set -e
    git commit -am "Automatically updated data"
    git push
else
    set -e
    echo "No changes since last run"
fi