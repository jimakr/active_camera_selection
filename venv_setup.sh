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
pip install torch==1.9.0+cpu torchvision==0.10.0+cpu torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html

# Notify the user
echo "Virtual environment '$venv_name' created and activated."
 
