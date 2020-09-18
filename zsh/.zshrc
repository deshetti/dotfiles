# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export GOBIN="$HOME/go/bin"
export GOPATH="$HOME/go"
export PATH=$GOPATH/bin:$PATH
export COOKIECUTTER_CONFIG="$HOME/.cookiecutters/defaults.yaml"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions osx brew kubectl docker helm docker-compose zsh-nvm zsh-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# aliases
alias az='atom ~/.zshrc'
alias sz='source ~/.zshrc'
alias c='clear'
alias p='cd $HOME/projects/'
alias pfd='cd $HOME/projects/factly-datasets'
alias pfdi='cd $HOME/projects/factly-datasets-interns'
alias play='cd $HOME/projects/playground'
alias i='idea .'
alias c.='code .'
alias dcom='cd $HOME/projects/shashideshetti-com && idea . && cd -'
alias w='watch'

### Golang ###
alias grm="go run main.go"
alias gmi="go mod init"

### Python ###
alias penv='python3 -m venv .venv'
alias penva='source .venv/bin/activate'
alias penvd='deactivate'
alias pipt='pip3 install pip-tools && touch requirements.in && touch requirements.txt'
alias pipc='pip-compile'
alias pipr='pip3 install -r requirements.txt'
alias poi='poetry install'
alias poa='poetry add'
alias por='poetry run'
alias pou='poetry update'
alias porp='poetry run python'
alias porf='poetry run flake8 .'
alias porb='poetry run black .'
alias pori='poetry run isort --recursive .'
alias pgi='gi code,intellij,python,virtualenv >> .gitignore'

### Node ###
alias ni='npm install'
alias nrd='npm run dev'
alias nrs='npm run start'
alias nrb='npm run build'

### Yarn ###
alias y='yarn'
alias ys='yarn start'
alias yb='yarn build'

### Dega ##
alias g='./gradlew'
alias dega='cd $HOME/projects/dega/'
alias degag='cd $HOME/projects/dega/dega-gateway'
alias degac='cd $HOME/projects/dega/dega-core'
alias degaf='cd $HOME/projects/dega/dega-factcheck'
alias degaa='cd $HOME/projects/dega/dega-api'
alias degaw='cd $HOME/projects/dega/dega-web'
alias degad='cd $HOME/projects/dega/dega-deployment'
alias dk-dev='cd $HOME/projects/dega/dega-gateway && docker-compose -f src/main/docker/app-dev.yml up && cd -'
alias dk-mongo='cd $HOME/projects/dega/dega-gateway && docker-compose -f src/main/docker/mongodb.yml up && cd -'
alias deit='docker exec -it'

### Data Portal ##
alias data='cd $HOME/projects/data-portal/'

### Cricket Stas
alias cs='cd $HOME/projects/cric-stats/'

## Brew Commands ##
alias bi='brew update && brew install'
alias bu='brew uninstall'
alias bci='brew update && brew cask install'
alias bcu='brew cask uninstall'

## Docker ##
alias dksa='docker stop $(docker ps -q)'
alias dkrc='docker rm $(docker ps -a -q)'
alias dkri='docker rmi $(docker images -q)'
alias dkps='docker ps'
alias dks='docker stop'
alias dklf='docker logs -f'
alias dke='docker exec -it' # follows by <container name> sh

# Docker Compose #
alias dcb='docker-compose build'
alias dcu='docker-compose up'
alias dcd='docker-compose down'

## Git  ##
alias god='git pull origin develop'
alias gom='git pull origin master'
alias ga.='git add .'
alias gp='git push'
alias gc='git clone'
alias gs='git status'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gco='git checkout'
alias gco.='git checkout .'
alias gcod='git checkout develop'
alias gcb='git checkout -b'
alias gst='git stash'

## Kubernetes ##
alias wkg='watch kubectl get'
alias wkd='watch kubectl describe'
alias wkgp='watch kubectl get pods'
alias wkgs='watch kubectl get services'
alias wkdp='watch kubectl describe pod'
alias kg='kubectl get'
alias kd='kubectl describe'
alias kdl='kubectl delete'
alias kdp='kubectl describe pod'
alias kaf='kubectl apply -f'
alias kgp='kubectl get pods'
alias kgpa='kubectl get pods --all-namespaces'
alias kgs='kubectl get services'
alias kgi='kubectl get ingress'
alias kgc='kubectl get certificates'
alias klf='kubectl logs -f'
alias ke='kubectl exec -it' # follows by <pod name> sh
alias kcdega='gcloud container clusters get-credentials dega-mum-prod-1009 --zone asia-south1-a --project dega-232715'

## Other ##
alias dgs='yarn start --host 0.0.0.0 --port 1984'

## Helm ##
alias hiv='helm inspect values'

deploy-gateway() {
    #do things with parameters like $1 such as
    cd $HOME/projects/dega/dega-gateway
    ./gradlew bootWar -Pprod jibDockerBuild
    docker image tag gateway dega/gateway:"$1"
    docker image tag gateway dega/gateway:latest
    docker push dega/gateway:"$1"
    docker push dega/gateway:latest
    cd -
}

deploy-core() {
    #do things with parameters like $1 such as
    cd $HOME/projects/dega/dega-core
    ./gradlew bootWar -Pprod jibDockerBuild
    docker image tag core dega/core:"$1"
    docker image tag core dega/core:latest
    docker push dega/core:"$1"
    docker push dega/core:latest
    cd -
}

deploy-factcheck() {
    #do things with parameters like $1 such as
    cd $HOME/projects/dega/dega-factcheck
    ./gradlew bootWar -Pprod jibDockerBuild
    docker image tag factcheck dega/factcheck:"$1"
    docker image tag factcheck dega/factcheck:latest
    docker push dega/factcheck:"$1"
    docker push dega/factcheck:latest
    cd -
}

deploy-api() {
    #do things with parameters like $1 such as
    cd $HOME/projects/dega/dega-api
    docker build . -t asia.gcr.io/dega-232715/dega/api:"$1"
    docker build . -t asia.gcr.io/dega-232715/dega/api:latest
    docker push asia.gcr.io/dega-232715/dega/api:"$1"
    docker push asia.gcr.io/dega-232715/dega/api:latest
    cd -
}

deploy-web() {
    #do things with parameters like $1 such as
    cd $HOME/projects/dega/dega-web
    docker build . -t dega/web:"$1"
    docker build . -t dega/web:latest
    docker push dega/web:"$1"
    docker push dega/web:latest
    cd -
}

port(){
  lsof -i :"$1"
}
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}
