#!/bin/sh
set -e
rm -rf build/onedotoh
python -m venv build/onedotoh
./build/onedotoh/bin/pip install setuptools==63.4.2
./build/onedotoh/bin/pip install . build wheel
python -m build --wheel --no-isolation setuptools_example/
python -m build --wheel --no-isolation pyproject_example/
ls setuptools_example/dist/ pyproject_example/dist/
