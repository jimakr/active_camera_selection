#!/bin/bash


# Set the name of the virtual environment
venv_name="venv"

# Create the virtual environment
python3 -m venv $venv_name
echo "Virtual environment '$venv_name' created"

# Activate the virtual environment
source $venv_name/bin/activate
echo "Virtual environment '$venv_name' activated"

# Install the requirements
echo "Install the requirements"
pip3 install -r requirements.txt
# Install Pytorch
pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 --index-url https://download.pytorch.org/whl/cu118
# Notify the user
echo "Virtual environment '$venv_name' created and activated."
 
