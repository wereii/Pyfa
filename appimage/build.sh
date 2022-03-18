#!/usr/bin/env sh

[ -e .venv ] || python -m venv .venv 

. ".venv/bin/activate"

make -f ../Makefile
