default["elasticsearch"]["version"] = "6.2.4"
default["elasticsearch"]["download_url"] = "https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.4.tar.gz"
default["elasticsearch"]["base_dir"]  = "/opt/inmobi"
default["elasticsearch"]["log_base_dir"]  = "/var/log"

#elastic search node
default["elasticsearch"]["data_nodes"]['dfw2'] = ["elk1001.grid.dfw2.inmobi.com","elk1002.grid.dfw2.inmobi.com","elk1003.grid.dfw2.inmobi.com","elk1004.grid.dfw2.inmobi.com"]

#minimun master node 
#    (no of nodes/2) + 1
# E.g 3 elastic search nodes 
# (3/2)+1 = 2
default["elasticsearch"]["minimum_master_node"]['dfw2'] = 2
