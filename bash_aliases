alias apr='sudo service httpd restart'
alias dlog='date=`date "+%Y-%m-%d"`; tail -f /usr/local/datashare/log/dspace.log.$date'
alias h='history'
alias psqlds='psql -d datashar -U datashar'
alias rt='sudo su tomcat /usr/local/datashare/bin/service.sh restart_tomcat'
alias st='sudo /usr/local/datashare/bin/service.sh stop_tomcat'
alias tlog='tail -f /opt/tomcat/logs/catalina.out'

