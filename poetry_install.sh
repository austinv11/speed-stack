#!/usr/bin/env bash
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python3
poetry config settings.virtualenvs.in-project true
poetry completions bash > /etc/bash_completion.d/poetry.bash-completion
poetry completions zsh > ~/.zfunc/_poetry
# For zsh, you must then add the following line in your ~/.zshrc before compinit:
# fpath+=~/.zfunc
poetry --version