provider "kubernetes" {
  #host = "https://104.196.242.174"

  #client_certificate     = file("~/.kube/client-cert.pem")
  #client_key             = file("~/.kube/client-key.pem")
  #cluster_ca_certificate = file("~/.kube/cluster-ca-cert.pem")
  #username = "ClusterMaster"
  #password = "MindTheGap"
}


resource "kubernetes_pod" "nginx" {
  metadata {
    name = "nginx-example"
    labels = {
      App = "nginx"
    }
  }

  spec {
    container {
      image = "nginx:1.7.8"
      name  = "hello-world"

      port {
        container_port = 80
      }
    }
  }
}
