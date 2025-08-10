# # cd cs231n/datasets
# if [ ! -d "cifar-10-batches-py" ]; then
#   wget http://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz -O cifar-10-python.tar.gz
#   tar -xzvf cifar-10-python.tar.gz
#   rm cifar-10-python.tar.gz
#   wget http://cs231n.stanford.edu/imagenet_val_25.npz
# fi
# # cd ../..

NEW_EMAIL="ayyoobmohd@iisc.ac.in"
OLD_EMAIL="ayyoob@Mohds-MacBook-Air.local"
NEW_NAME="Mohd Ayyoob"   # keep your name same or change if needed

git filter-branch --env-filter '

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$NEW_NAME"
    export GIT_COMMITTER_EMAIL="$NEW_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$NEW_NAME"
    export GIT_AUTHOR_EMAIL="$NEW_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags

