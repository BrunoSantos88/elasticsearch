####  Instalando o Filebeat 7.14 ""modulo postgress

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.14.1-amd64.deb
sudo dpkg -i filebeat-7.14.1-amd64.deb

#[pasta]  filebeat.yml 

output.elasticsearch:
  hosts: ["IP_DO_SERVIDOR:9200"] #Endereço do elasticsearch
  username: "elastic" #usuario do elasticsearch
  password: "<password>" #senha do elasticsearch
setup.kibana:
  host: "IP_DO_SERVIDOR:5601" #Endereço do seu Kibana

  [módulos]  ##sudo filebeat modules enable postgresql

  [pasta]  #/etc/filebeat/modules.d/postgresql.yml 

   module: postgresql
  log:
    enabled: true

    var.paths: ["/var/lib/postgresql/*.log*"]

   ## [coomandos]  ##

    sudo filebeat setup
     sudo service filebeat start
     
## Modulo mysql / filebeat modules enable mysql

 [pasta] /etc/filebeat/modules.d/mysql.yml

 - module: mysql
  # Error logs
  error:
    enabled: true
    var.paths: ["/var/log/mysql/mysqld.log"]
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
    #var.paths:

  # Slow logs
  slowlog:
    enabled: true
    var.paths: ["/var/log/mysql/slow-mysql-query.log"]
    # Set custom paths for the log files. If left empty,
    # Filebeat will choose the paths depending on your OS.
#var.paths: