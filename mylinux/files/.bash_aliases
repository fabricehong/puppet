alias aliases="vi ~/.bash_aliases"

# cd
alias n="nautilus ."
alias cddl="cd ~/Downloads"
alias cddev="cd ~/Nespresso/dev"
alias cdts="cd ~/Nespresso/dev/toystory"
alias cdfa2="cd ~/Nespresso/dev/cq5/nesclub2-front-app"
alias cdfa3="cd ~/Nespresso/dev/cq5/nesclub3-front-app"
alias cde3="cd /home/fabrice/Nespresso/dev/cq5/nesclub3-ecommerce-app"
alias cdfc="cd ~/Nespresso/dev/cq5/nesclub-front-core"
alias cdcq="cd ~/Nespresso/cq"
alias cdvcq="cd ~/workspace_geppetto/cq5-vagrant-2/trunk"
alias cdvgr="cd ~/workspace_geppetto/metrics-vagrant/trunk"
alias cdvrr="cd ~/workspace_geppetto/rerun-vagrant/trunk"
alias cdvnx="cd ~/workspace_geppetto/nexus-vagrant/trunk"
alias cdpmod="cd ~/workspace_geppetto/all_modules"
alias cdvnc3="cd /home/fabrice/workspace_geppetto/nesclub3-vagrant"
alias cdphie="cd ~/workspace_geppetto/puppet-modules/puppet-hiera/hieradata/hosts"
alias cdpmas="cd ~/workspace_geppetto/puppet-modules/puppetmaster/trunk"
alias cdjp="cd /home/fabrice/prog/java-projects"
alias mvni="mvn clean install"
alias lsa="ls -la"
alias cdid="cd ~/idea/bin"
alias aptprox="sudo cp /etc/apt/apt.conf.proxy /etc/apt/apt.conf"
alias cqlogs="less /home/fabrice/Nespresso/cq/crx-quickstart/logs/error.log"
alias srcb=". ~/.bashrc"
alias rinstall='r10k -v info puppetfile install'
# git
alias gb="git branch"
alias st="git status"
alias gb="git branch"
alias lg="git log"
alias gk=gitk
alias gka="gitk --all"
alias gco="git checkout"
alias r10up="r10k -v info puppetfile install"

alias vltdl="/home/fabrice/Nespresso/dev/cq5/nesclub3-front-local-boostrap/export-content.sh"

function plant {
cd ~/plantUml
./start.sh &
n
if [ -n "$1" ];
then
	gedit $1.pu
        return
fi
}

function com {
if [ -z "$1" ];
then
	echo "you must provide a message for commiting"
	return
fi
echo "git add ."
git add .
echo "git commit -a -m \"$1\""
git commit -a -m "$1"
}

function fetch {
wget --user=admin --ask-password --proxy=off $@
}

function r {
grep -R $1 *
}


function go {
ssh ahong@$1.nespresso.com
}