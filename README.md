## Setup Guide

### Bash

```sh
mkdir -p ~/bin && \
curl -L https://raw.githubusercontent.com/haroun-b/ih-lab-redo/main/lab_redo.sh -o ~/bin/lab_redo.sh && \
chmod +x ~/bin/lab_redo.sh && \
sudo sh -c 'echo '\''export PATH="$HOME/bin:$PATH"'\'' >> ~/.bashrc' && \
source ~/.bashrc
```

### Zsh

```sh
mkdir -p ~/bin && \
curl -L https://raw.githubusercontent.com/haroun-b/ih-lab-redo/main/lab_redo.sh -o ~/bin/lab_redo.sh && \
chmod +x ~/bin/lab_redo.sh && \
sudo sh -c 'echo '\''export PATH="$HOME/bin:$PATH"'\'' >> ~/.zshrc' && \
source ~/.zshrc
```

## Usage

**DON'T FORGET TO RESTART YOUR TERMINAL AFTER THE INSTALLATION**

```sh
lab_redo.sh <lab_fork_url>
```

### Example

```sh
lab_redo.sh https://github.com/<YOUR_GITHUB_USERNAME>/lab-javascript-basic-algorithms.git
```
