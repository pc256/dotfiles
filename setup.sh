#/bin/env bash
################################################################################
# setup dotfile symlinks
################################################################################

FILES=`ls -I README -I setup.sh -I vimrc`

echo "Adding dotfile symlinks..."

for f in ${FILES}; do
    if [ ! -L ../.${f} ]; then
        echo "Adding link for: ~/.${f}"
        ln -s dotfiles/${f} ../.${f}
    fi
done

echo "Setting up bash history"
mkdir ${HOME}/.history

echo "Done."

################################################################################
# END
################################################################################
