REPO_NAME=$1

CURRENT_DIR=$(pwd)

REPO_PATH=$GITHUB_DIR/$REPO_NAME

git init $REPO_PATH
touch $REPO_PATH/.gitignore
echo "${REPO_NAME}\n===" >> $REPO_PATH/README.md
cd $REPO_PATH
git add .
git commit -m"Initializing ${REPO_NAME}."
gh repo create $REPO_NAME --private --source=. --remote=upstream --push
cd $CURRENT_DIR
