#!/bin/bash
echo "Setting up basic project structure..."

echo "Initialising uv..."
cd && cd .. && cd .. && cd workspaces && cd $(ls)
uv init && uv venv && uv python install 3.14 && uv python update-shell
mkdir -p src/${PWD##*/}
mkdir docs
mkdir data
mkdir exports
mv main.py src/${PWD##*/}/main.py

echo "Cleaning home directory..."
cd && rm -rf .bash_logout .bashrc .oh-my-zsh .zcom*

echo "Project setup finished."
