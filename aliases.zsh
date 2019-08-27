# General Aliases
alias ll="ls -al"
alias rprofile=". ~/.zshrc"
alias profile="vim ~/.zshrc"
alias t="tree"

# CCI Aliases
alias ccia="source ~/code/envs/cci/bin/activate"
alias cciol="cci org list"
alias ccio="cci org browser"
alias fdeploy="cci flow run deploy_unmanaged"
alias sdeploy="sfdx force:source:push"
alias lsd="ls -ald */"

# Function Group
function scratch(){
        echo "Creating Scratch Org..."
        cci org scratch dev $1 --days $2
        echo "Setting org default..."
        cci org default $1
        echo "New org info: "
        cci org info
        echo "Running new org flow..."
        cci flow run dev_org
}

function prerelease(){
        echo "Creating Scratch Org..."
        cci org scratch prerelease $1 --days $2
        echo "Setting org default..."
        cci org default $1
        echo "New org info: "
        cci org info
        echo "Running new org flow..."
        cci flow run dev_org
}
