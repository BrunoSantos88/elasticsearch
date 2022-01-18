###cooomandos curl ##

log status: sudo journalctl --unit elasticsearch

Pid "sstema" : ps -u elasticsearch

#Teste se a interface http está sendo executada usando curl

curl "http://localhost:9200" #chamada
curl -X PUT "http://localhost:9200/index1" #chamada status
curl http://localhost:9200/_aliases?pretty=true ## indice"

#Ver os metadados do índice#
curl "http://localhost:9200/index1?pretty"

[arquivos]  #  cd /etc/elasticsearch/
ls -lh