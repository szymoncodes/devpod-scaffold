#!/bin/bash
echo "Setting up basic project structure..."

echo "Installing project tools..."
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
packages=(
  python
  uv
  ruff
  ty
)

for pkg in "${packages[@]}"; do
  echo "Installing $pkg..."
  brew install $pkg
done

echo "Initialising uv..."
cd .. && cd .. && cd workspaces && cd $(ls)
uv init && uv venv 
mkdir -p src/${PWD##*/}
mkdir -p docs
mkdir -p data
mkdir -p exports
mv main.py src/${PWD##*/}/main.py


echo "Project setup finished."
