#!/bin/bash
mkdir -p ~/bin

# Check if PATH is installed:
if ! grep "PATH=\"$HOME/bin/" ~/.bashrc > /dev/null; then
    echo "export PATH=\"${HOME}/bin/:\$PATH\"" >> ~/.bashrc
    echo "add path..."
else
    echo "path already existed"
fi

if [[ -e ~/bin/qda ]]; then
    echo "remove the old command: qda"
    rm ~/bin/qda
fi

echo "copy files to $HOME/bin/"
if chmod +x pbs_lib/* && cp -r pbs_lib/* ~/bin/; then
    echo "Done"
fi