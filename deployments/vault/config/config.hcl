ui = true
disable_mlock = "true"

storage "raft" {
  path    = "/vault/data"
  node_id = "node1"
}

listener "tcp" {
  address = "[::]:8200"
  tls_disable = "false"
  tls_cert_file = "/certs/cert.pem"
  tls_key_file  = "/certs/key.pem"
}

api_addr = "https://vault.localhost:8200"
cluster_addr = "https://vault.localhost:8201"