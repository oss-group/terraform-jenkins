# resource "jenkins_credential_ssh" "github" {
#   name       = "github"
#   username   = "git"
#   privatekey = file("/home/leons/.ssh/jenkins-node")
# }

# resource "jenkins_credential_ssh" "jenkins-virtuals" {
#   name       = "jenkins-virtuals"
#   username   = "git"
#   privatekey = file("/home/leons/.ssh/jenkins-virt-ssh")
# }

resource "jenkins_credential_secret_text" "example_secret" {
  name       = "example_secret"
  secret     = "testserver"
}

resource "jenkins_folder" "example_folder" {
  name = "Example Folder"
}

resource "jenkins_job" "example_job" {
  name     = "Example Job"
  folder   = jenkins_folder.example_folder.id
  template = templatefile("${path.module}/job.xml", {
    description = "An example job created from Terraform"
  })
}

# output id {
#   value = jenkins_credential_secret_text.powerdns_api_key.id
# }
