provider "kubernetes" {
  config_context_cluster = "local"
}

resource "kubernetes_deployment" "web" {
  metadata {
    name = "web"
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "web"
      }
    }

    template {
      metadata {
        labels = {
          app = "web"
        }
      }

      spec {
        container {
          name  = "web"
          image = "web:latest"
          ports {
            container_port = 3000
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "web" {
  metadata {
    name = "web"
  }

  spec {
    selector = {
      app = "web"
    }

    port {
      port        = 3000
      target_port = 3000
    }

    type = "LoadBalancer"
  }
}