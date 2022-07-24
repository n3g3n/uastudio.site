# Reset
Color_Off='\033[0m'       # Text Reset
BRed='\033[1;31m'         # Red
IPurple='\033[0;95m'      # Purple

echo ""
echo -e "${BRed}GulpNuke master for install GULP project ${Color_Off}"
echo ""
echo "# Creates /home/git/YEAR/projectname.git"
echo "# ./gitnuke.sh"

read -p "Enter username " -r
echo    # (optional) move to a new line
if [[ ! $REPLY ]]
  echo "Installing NVM v17 Latest"
  echo $(nvm install v17)
  echo "Using NVM v10.24.1 Latest LTS: Dubnium"
  echo $(nvm use v17)
  printf " ${BRed} --save-dev g@2.0.1 Install global ... ${Color_Off} \n"
  echo $(npm i --save-dev g@2.0.1)
  printf " ${BRed} gulp@3.9.0 Install global ... ${Color_Off} \n"
  echo $(npm i --save-dev n@6.2.0)
  printf " ${BRed} gulp@3.9.0 Install global ... ${Color_Off} \n"
  echo $(npm i -g gulp@3.9.0)
  printf " ${BRed} --save-dev gulp Install ... ${Color_Off} \n"
  echo $(npm i --save-dev gulp@3.9.0)
  printf " ${BRed} --save-dev gulp Install ... ${Color_Off} \n"
  echo $(npm i --save-dev gulp-copy@4.0.1)
  printf " ${BRed} gulp-html-minify... ${Color_Off} \n"
  echo $(npm i --save-dev gulp-html-minify@0.0.14)
  printf " ${BRed} gulp-cssmin... ${Color_Off} \n"
  echo $(npm i --save-dev gulp-cssmin@0.2.0)
  printf " ${BRed} gulp-minify (JavaScript)... ${Color_Off} \n"
  echo $(npm i --save-dev gulp-minify@3.1.0)
  printf " ${BRed} gulp-sass... ${Color_Off} \n"
  echo $(npm i --save-dev gulp-sass@4.0.2)
  printf " ${BRed} gulp-image... ${Color_Off} \n"
  echo $(npm i --save-dev gulp-image@4.3.0)
  printf " ${BRed} browser-sync... ${Color_Off} \n"
  echo $(npm i --save-dev browser-sync@2.26.7)
echo ""
  echo "  Finishing ... "
printf "\n"
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi
