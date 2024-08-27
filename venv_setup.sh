#!/bin/bash

# Set the name of the virtual environment
venv_name="venv"

# Create the virtual environment
python3 -m venv $venv_name

# Activate the virtual environment
source $venv_name/bin/activate

# Install the requirements
pip3 install -r requirements.txt

# Notify the user
echo "Virtual environment '$venv_name' created and activated."

