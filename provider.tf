terraform {
  required_providers {
    jenkins = {
      source = "taiidani/jenkins"
      version = "0.9.2"
    }
  }
}

provider "jenkins" {
  server_url = var.jenkins_url # Or use JENKINS_URL env var
  username   = var.jenkins_username          # Or use JENKINS_USERNAME env var
  password   = var.jenkins_password            # Or use JENKINS_PASSWORD env var
#  ca_cert = "/etc/ssl/certs/intermediate.pem"                       # Or use JENKINS_CA_CERT env var
}
