PENIS=$(git -C ~/.zsh remote update > /dev/null)
UPSTREAM=${1:-'@{u}'}
LOCAL=$(git -C ~/.zsh rev-parse @)
REMOTE=$(git -C ~/.zsh rev-parse "$UPSTREAM")
BASE=$(git -C ~/.zsh merge-base @ "$UPSTREAM")

if [ $LOCAL = $REMOTE ]; then
    echo "" > /dev/null
elif [ $LOCAL = $BASE ]; then
    echo "Terminaleinstellungen Repo needs a pull"
elif [ $REMOTE = $BASE ]; then
    echo "Terminaleinstellungen Repo needs a push"
else
    echo "Terminaleinstellungen Repo is fucked up (diverged)"
fi
