#basic
alias rm 'rmtrash'
alias ll 'ls -la'
alias .. 'cd ../'
alias ... 'cd ../../'
alias diff 'colordiff'

#docker
alias doc='docker-compose'

#vim
alias v='view'
alias vi='vim'

#git
alias g='git'
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gbm= 'git branch -m'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gg 'git grep'
alias ggi 'git grep -i'
alias ggiv 'git grep -i -v'
alias gget='ghq get -l'
alias gi='git init'
alias gl='git log --pretty=format:"%C(yellow)%h%Creset %C(magenta)%ci%Creset%n%C(cyan)%an <%ae>%Creset%n%B"'
alias glo='git log --oneline'
alias glg='git log --graph --pretty=format:"%C(yellow)%h%Creset %C(magenta)%ci%Creset%n%C(cyan)%an <%ae>%Creset%n%B"'
alias gm='git merge'
alias gp='git push'
alias gpo='git push origin'
alias gp='git push origin HEAD'
alias gr='git reset'
alias grb='git rebase'
alias grv='git revert'
alias gs='git status'
alias gsh='git show'

alias ssmzgokfzf='aws --profile zucks-zgok --region ap-northeast-1 ssm start-session --target (aws --profile zucks-zgok --region ap-northeast-1 ec2 describe-instances | jq -c '\''.Reservations[].Instances[] | select(.Tags[].Key == "Name") | {"Name": .Tags[].Value, "InstanceId": .InstanceId }'\'' | fzf | jq -r ".InstanceId")'

function img
    imgcat $argv[1]
end

alias date='gdate'

alias killsh='ps a | grep zgok-sh | grep -v color | awk "{print $1}" | xargs kill -9'

alias m='MANPAGER="vim -M +MANPAGER -c \"set nolist\" -" command man'
