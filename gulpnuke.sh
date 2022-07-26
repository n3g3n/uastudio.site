#!/bin/bash
# Reset
Color_Off='\033[0m'       # Text Reset
BRed='\033[1;31m'         # Red
IPurple='\033[0;95m'      # Purple
NODE_VERSION="v17.6.0"
echo ""
echo -e "${BRed}GulpNuke master for install GULP project ${Color_Off}"
echo ""
echo -e "# It will creates gulp project, you must start your project in ${BRed}/src${Color_Off} folder"
echo -e "# This gulp project had commands for developing and production"
echo -e "# Same as for compressing and optimize all files it ${BRed}/dist${Color_Off} folder "
echo "# It will creates folders and startup files"
echo -e "# After install run ${BRed}gulp watcher${Color_Off} for dev mode"
echo -e "# After install run ${BRed}gulp ${Color_Off} for create  ${BRed}/dist${Color_Off} folder"
read -p "Do you want to install Y/N " -r $ASK
echo    # (optional) move to a new line
if [ $REPLY = "Y" ] ; then
  echo -e "Installing NVM v17.6.0 Latest"
  echo -e nvm install $NODE_VERSION
  echo -e "Using NVM $NODE_VERSION Latest LTS: Dubnium"
  echo -e nvm use $NODE_VERSION
  echo -e touch .nvmrctest
  echo $NODE_VERSION >> .nvmrctest
  echo "$NODE_VERSION in .nvmrctest populated"

# install --global gulp-cli
  printf " ${BRed} gulp-cli Install global ... ${Color_Off} \n"
  echo $(npm install --global gulp-cli)
#init
  printf " ${BRed} npm init -y ... ${Color_Off} \n"
  echo $(npm init -y)
#gulp
  printf " ${BRed} Install gulp@4 ... ${Color_Off} \n"
  echo $(npm install gulp@4)
# Install gulpfile depencie
  printf " ${BRed} Install gulpfile depencie ... ${Color_Off} \n"
  echo $(npm install --save-dev gulp-sourcemaps gulp-concat gulp-rename gulp-replace gulp-terser gulp-sass sass gulp-postcss autoprefixer cssnano gulp-htmlmin gulp-cssmin vinyl-buffer gulp-purifycss gulp-fontmin gulp-autoprefixer gulp-delete-lines gulp-cheerio gulp-filter gulp-clean gulp-image-lqip fancy-log gulp imagemin-webp autoprefixer cssnano fancy-log gulp-autoprefixer gulp-cheerio gulp-clean gulp-cssmin gulp-delete-lines gulp-filter gulp-fontmin gulp-htmlmin gulp-image-lqip gulp-imagemin gulp-postcss gulp-purifycss gulp-rename gulp-replace gulp-sass gulp-terser htmlparser2 i imagemin-gifsicle imagemin-jpegtran imagemin-mozjpeg imagemin-optipng imagemin-pngquant imagemin-svgo install npm sass vinyl-buffer gulp-avif)
# touch .gitignore
  printf " ${BRed} Write .gitignore ... ${Color_Off} \n"
  echo $(touch .gitignore1)
  echo $(.npm>>.gitignore1>)
  echo $(.env>>.gitignore1>)
  echo $(dist>>.gitignore1>)
  echo $(.node_modules>>.gitignore1>)
  echo $(.cache>>.gitignore1>)
printf "\n"
else
  exit 1 # handle exits from shell or function but don't exit interactive shell
fi
