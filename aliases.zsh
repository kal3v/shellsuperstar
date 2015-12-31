alias ipvl="sudo iptables -vL -n"
alias ipvlt="sudo iptables -t nat -vL -n"
alias ipt="sudo iptstate"
alias natp="netstat -natp"
alias napt="netstat -natp"
alias snatp="sudo netstat -natp"
alias snapt="sudo netstat -natp"
alias psa="ps axf"
alias ll="ls -latr"
alias sl="ls"
alias v="vim"

# Git
alias gits="git status"

# ELK
alias stelk="sudo systemctl status elasticsearch.service; sudo systemctl status logstash; sudo systemctl status kibana.service;"
alias stelh="curl 'localhost:9200/_cluster/health?pretty'"
alias stelno="curl 'localhost:9200/_cat/nodes?v'"
alias stelproc="curl 'localhost:9200/_nodes/process?pretty'"
alias stelsh="curl -XGET http://localhost:9200/_cat/shards"
# open FDs
alias sysfs="sysctl fs.file-nr"
