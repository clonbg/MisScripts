if [ -d .git/ ];
then
git pull
yarn
code .
yarn serve
else
echo "No es un git"
fi