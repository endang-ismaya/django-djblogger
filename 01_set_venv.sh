#!/bin/bash
# install all requirements with venv
python -m venv .venv
sleep 3

source .venv/Scripts/Activate
sleep 2

# install requirements-dev
pip install -r requirements-dev.txt
sleep 2

# install requirements
pip install -r requirements.txt
sleep 2

