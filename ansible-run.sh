#!/usr/bin/env bash

## Install homebrew
which -s brew
if [[ $? != 0 ]] ; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

## Install ansible
brew install ansible

# Install ansible-galaxy dependencies
ansible-galaxy install -r requirements.yml

# Run ansible playbook
ansible-playbook main.yml --ask-become-pass 