
# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# alias vi="~/.local/bin/lvim"
alias vi="lvim"
alias lvim="/Users/tygedavis/.local/bin/lvim"
alias nexio"ls ~/Projects/Nexio"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

## NOTE: After editing .zprofile run 'source ~/.zprofile' to apply changes 
## NOTE: Global vars are in .zshrc (this is just for this computer)

# ------------------------------------------------------------------
# ------------------------------------------------------------------
## ALIAS ##
# ------------------------------------------------------------------
# ------------------------------------------------------------------

# Edit Z-Profile
alias editprofile="vi ~/.zprofile"
alias editrc="vi ~/.zshrc"

 # Edit NeoVim config
alias editnvim="vi ~/.config/nvim/init.vim"

# Edit AWS Credentials
alias editaws="vi ~/.aws/credentials"

# ------------------------------------------------------------------
# Path Alias
# ------------------------------------------------------------------
alias nexio="~/IdeaProjects"

# ------------------------------------------------------------------
# NPM
# ------------------------------------------------------------------

# NPM Token
export NPM_TOKEN="1d0cd589-7268-41e7-90c8-49a288ce1b20"

# Upgrade NPM
alias update-npm="npm install -g npm"

# NPM Install
alias ni="npm install"

# NPM Run Start/Serve
alias ns="npm start || npm run serve"

# NPM Deploy Local
alias dl="npm run deploy-local"

# NPM Deploy Function
alias df="npm run deploy-function"

# NPM Run Test
alias nt="clear; npm run test"

# NPM Run Lint
alias nl="npm run lint && echo '\x1b[32mNo Lint Errors\x1b[0m'"

# NPM Run Test Fire
alias ntf="clear && npm run test-fire"

# NPM Run API-Test-Local
alias test-api="npm run api-test-local"

# NPM Run Lint && Run Test
alias finish="nt && echo '\x1b[32mTests complete\x1b[0m' && nl && echo '\x1b[32mLint complete\x1b[0m' && echo -e '\e[1;42mEverything ready to commit\x1b[0m'"

# Reinstall npm packages and start the service
alias restart="ni && ns"

# Nukenode, reinstall, and start the service
alias hardrestart="nukenode && ns"

# ------------------------------------------------------------------
# GIT Alias
# ------------------------------------------------------------------

# GIT Checkout Dev and pull
alias dev="git checkout develop || git checkout master && git pull && ni"

# GIT Delete all local branches except for Develop, Release, and Master
alias cleanBranches="git branch --merged | egrep -v '(^\*master|staging|development)' | xargs git branch -d"

# GIT List all branches
alias showBranches="git branch -a"


# ------------------------------------------------------------------
# Misc Alias
# ------------------------------------------------------------------

alias ll="ls -l"

# ------------------------------------------------------------------
# Functions
# ------------------------------------------------------------------

# Add all changes to git and commit them with a custom message
# Can be called with: gitCommit 'commit message here'
gitCommit() {
    if [ test ]
    then
        finish
        git add .
        if [ "$1" != "" ]
        then
            git commit -m "$1"
        else git commit -m update
        fi
        git push
    else
        echo "No changes have been made"
    fi
}

test(){ # TODO: Need to make this return false if there are no differences between current branch and develop
#    if [ git diff --cached deveop ]
#    then 
#        return -1
#    else
        return 1
#    fi
}

# ------------------------------------------------------------------
# Plugins
# ------------------------------------------------------------------
plugins=(
        autojump
        brew
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
        zsh-nvim
)

# ------------------------------------------------------------------
# Other Stuff
# ------------------------------------------------------------------

# Refresh Node Modules
alias nukenode='rm -f ./package-lock.json && rm -rf ./node_modules/ && npm install'

# Setting PATH for Python 3.9
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
