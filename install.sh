#!/bin/bash
mkdir -p ~/bin
chmod +x pbs_lib/* && cp pbs_lib/* ~/bin/
echo "export PATH=\"${HOME}/bin/:\$PATH\"" >> ~/.bashrc