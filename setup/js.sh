PROJECT_DIR="${PROJECT_DIR:-default ~/Projects}"

# install eslint and add a default .eslintrc file
npm install eslint prettier -g 
cp ./js/.eslintrc $PROJECT_DIR/.eslintrc
cp ./js/.prettierrc $PROJECT_DIR/.prettierrc

# install typescript
npm install typescript neovim ts-node tslint tslint-config-airbnb -g

