# export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
NEWLINE=$'\n'
export PATH="/usr/local/bin:/opt/homebrew/opt/mysql-client@8.4/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export CLICOLOR=1
export AWS_REGION=us-east-1
export PROMPT="%F{green}%F{red}@%f%B%F{cyan}%~%f%b%B%F{red}${NEWLINE}>%f%b "

# alias terraform="podman run --rm -it -v $HOME:$HOME -v /Volumes:/Volumes -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_REGION=$AWS_REGION  --workdir $PWD  hashicorp/terraform:1.8.2 "


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS=' --height=40% --preview="bat --color=always --style=numbers --line-range=:500 {}" --preview-window=right:60%:wrap'

export FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git -o -name .terraform \) -prune -o -print'

export EDITOR="nvim"
