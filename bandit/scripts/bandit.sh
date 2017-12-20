#!/bin/bash

set -v 

echo 'Installing bandit'
pip install bandit

echo 'Running Bandit tests'
bandit -r -f json -o banditResult.json .

echo 'Results:'
python bandit/banditParser.py -o banditResult.json -i bandit.ignore