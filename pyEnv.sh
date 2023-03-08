#!/bin/bash
echo "Cloning the repo"
git clone https://github.com/agusmakmun/django-markdown-editor.git

cd django-markdown-editor

echo "Setting up the env."
python3 -m venv venv
echo "Done!"

echo venv/ >> .gitignore

echo "Activating the ENV."
source venv/bin/activate
echo "Done!"

echo "Building requirements"
echo martor >> requirements.txt
echo gunicorn >> requirements.txt
echo gunicorn >> requirements.txt
echo "Done"

echo "Installing the requirements"
time pip install -r requirements.txt