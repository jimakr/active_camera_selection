import os
import subprocess
import sys

def create_venv(venv_name="venv"):
    # Create the virtual environment
    subprocess.run([sys.executable, "-m", "venv", venv_name])
    print(f"Virtual environment '{venv_name}' created.")

def install_requirements(venv_name="venv", requirements_file="requirements.txt"):
    # Install the requirements
    subprocess.run([f"{venv_name}/bin/pip", "install", "-r", requirements_file], shell=True)
    print(f"Requirements from '{requirements_file}' installed.")

def activate_instructions(venv_name="venv"):
    # Provide instructions to activate the virtual environment
    if os.name == "nt":  # Windows
        activation_command = f"{venv_name}\\Scripts\\activate"
    else:  # Unix or MacOS
        activation_command = f"source {venv_name}/bin/activate"
    
    print(f"To activate the virtual environment, run: {activation_command}")

if __name__ == "__main__":
    venv_name = "venv"
    requirements_file = "requirements.txt"

    create_venv(venv_name)
    #activate_instructions(venv_name)
    install_requirements(venv_name, requirements_file)


