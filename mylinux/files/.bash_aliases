alias n="nautilus ."
alias cdsd="cd /home/fabrice/IdeaProjects/java-projects/scalable-diner" 
function plant {
cd ~/plantuml
n
./start.sh &
if [ -n "$1" ]; then
gedit $1.pu &
fi
}
