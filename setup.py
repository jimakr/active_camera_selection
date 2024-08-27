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



if __name__ == "__main__":
    venv_name = "venv"
    requirements_file = "requirements.txt"

    create_venv(venv_name)
    install_requirements(venv_name, requirements_file)


