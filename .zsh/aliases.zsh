#######################################################################################################################
#######################				                      Useful Navigation                   ###############################
#######################################################################################################################

alias ..='cd ..'
alias ...='cd ../..'
alias 3.='cd ../../..'
alias cls='clear'

#######################################################################################################################
#######################				                      LSD                                 ###############################
#######################################################################################################################
alias ll='lsd -lh --header --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --header --group-dirs=first'
alias ls='lsd --group-dirs=first '
alias lt='lsd -l --tree'


#######################################################################################################################
#######################				                      BATCAT                              ###############################
#######################################################################################################################

alias cat='bat'

#######################################################################################################################
########################################						 FZF                        #######################################
#######################################################################################################################

#   DELETE USING fzf
alias rmfile='rm -rf $(ls | fzf -m)'

#######################################################################################################################
########################################						 FOR GIT							      #######################################
#######################################################################################################################
alias superlog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias push="git push origin main"
alias pull="git pull origin main"
alias gcl='git clone'
alias arbolito="git log --all --graph --decorate --oneline"
alias arbol="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all "


alias gs='git status'
alias task='nb tasks'


#######################################################################################################################
########################################						 VIM-NEOVIM                 #######################################
#######################################################################################################################

alias v="nvim"
alias nv="nvim"
alias vim="nvim"

# VI mode in the terminal
#
#bindkey -v
#export KEYTIMEOUT=1

#######################################################################################################################
#########################################						temas terminales            ####################################### 
#######################################################################################################################
alias at="alacritty-themes"
alias kt="kitty +kitten themes"

## Wellcome to the rice fields Motherfucker!
alias rice='curl -L rum.sh/ricebowl'

#######################################################################################################################
######################################### 						Services                  #######################################
#######################################################################################################################
alias services="systemctl list-units --type=service"
alias running_services='systemctl list-units  --type=service  --state=running'

#######################################################################################################################
######################################### 			      DOCKER	 			            #######################################
#######################################################################################################################

alias fig="docker-compose"
alias dockup="sudo systemctl start docker.service"

#######################################################################################################################
######################################### 			      KUBERNETES	 				      #######################################
#######################################################################################################################

alias k='kubecolor'
alias getpods='kubecolor --context -n infra get pods'
# Ver pods y eventos relacionados a ellos
alias kevent='kubecolor get pods --watch --output-watch-event -A'
alias kwanings='kubecolor get events -w --field-selector=type=Warning -A'
#alias toppod='kubectl top pods -n infra'


#######################################################################################################################
#########################################			PACKAGE MANAGERS WITH FZF			    #######################################
#######################################################################################################################
#
# apt install with fzf
alias apts="sudo true && apt list | sed 1d | cut -d/ -f1 | fzf -m --preview 'apt-cache show {1}' | xargs -ro sudo apt install"
# apt remove with fzf
alias aptr="sudo true && apt list --installed | sed 1d | cut -d/ -f1 | fzf -m --preview 'apt-cache show {1}' | xargs -ro sudo apt remove" 

#######################################################################################################################
######################################### 			        FOR SNAP 				                ###############################
#######################################################################################################################

#alias code='snap run code'

#######################################################################################################################
################################                    PDF                                 ###############################
#######################################################################################################################

alias reader='koodo-reader'

#######################################################################################################################
##########################################				      for some tools 				          ###############################
#######################################################################################################################

alias t='todo'
# ranger
alias fm='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

#######################################################################################################################
################################ confirm before overwriting something                   ###############################
#######################################################################################################################

alias cp="cp -iv"
alias mv="mv -iv"
#alias rm="rm -iv"

#######################################################################################################################
################################                    Hack The Box STUFF                  ###############################
#######################################################################################################################



#######################################################################################################################
################################                      EXTRACT STUFF                     ###############################
#######################################################################################################################

alias ip='ip -c'


#######################################################################################################################
################################                      COPY TO CLIPBOARD                ################################                     
#######################################################################################################################

alias clip='xclip -selection clipboard'
alias cdir='pwd | xclip -selection clipboard'

