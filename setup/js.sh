PROJECT_DIR="${PROJECT_DIR:-default ~/Projects}"

# install eslint and add a default .eslintrc file
npm install eslint -g 
cp ./js/.eslintrc $PROJECT_DIR

npm install prettier -g
