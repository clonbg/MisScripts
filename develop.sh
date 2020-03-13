if [ -d .git/ ];
then
git pull
yarn
code .
firefox-developer-edition http://localhost:8080
yarn serve
else
echo "No es un git"
fi
