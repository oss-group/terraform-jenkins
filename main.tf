resource "jenkins_credential_ssh" "github" {
  name       = "github"
  username   = "git"
  privatekey = file("/home/leons/.ssh/jenkins-node")
}

resource "jenkins_credential_ssh" "jenkins-virtuals" {
  name       = "jenkins-virtuals"
  username   = "git"
  privatekey = file("/home/leons/.ssh/jenkins-virt-ssh")
}

resource "jenkins_credential_secret_text" "powerdns_api_key" {
  name       = "powerdns_api_key"
  secret     = "testserver"
}

# resource "jenkins_folder" "local_deployments" {
#   name = "Local Deployments"
# }

resource "jenkins_job" "dev_vms" {
  name     = "Dev VM"
  # folder   = jenkins_folder.local_deployments.id
  template = templatefile("${path.module}/job.xml", {
    description = "An example job created from Terraform"
  })
}

output id {
  value = jenkins_credential_secret_text.powerdns_api_key.id
}