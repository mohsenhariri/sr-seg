#!/bin/bash
module purge
module load gcc openmpi
module load python/3.8.6
python3 --version
python3 -m venv env
source env/bin/activate
python --version
pip install -r requirements.txt
make piplineconfig