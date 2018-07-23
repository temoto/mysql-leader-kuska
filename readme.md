What
====

Set of configs and scripts to keep a single mysql server from a set of replicas in write mode.

If you are determined to use ring replication, this may help to automate writable master election.

Requirements
------------

* Any Mysql compatible server (maria, percona, etc)
* Consul https://www.consul.io/
* 2 mysql servers in ring replication
* application (mysql client) is configured without persistent connections or very short lived connections (under 2sec)
* application does not cache DNS responses

Installation
------------

* enable script checks in consul https://www.consul.io/docs/agent/options.html#_enable_script_checks
* copy entire directory structure to all mysql server machines
* change `clustername` in `/etc/mysql-leader.env` and `/etc/consul.d/mysql-leader.hcl`
* change `mysql_replication_{user,password}` in /etc/mysql-leader.env
* tune timeouts in `systemd/mysql-leader.service`, `consul.d/mysql-leader.hcl` to your taste
* restart `mysql.service`
* configure application to go to `mysql-clustername-{read,write}.service.consul` accordingly for reads and writes

Contact
=======

temotor@gmail.com
