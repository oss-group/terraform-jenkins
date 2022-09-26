
variable "jenkins_url" {
  default = "https://jenkins.dyn.homenet"  
}

variable "jenkins_username" {
  default = "leon.strong"  
}

variable "jenkins_password" {
  default = "11b575686fb6d675f8a645b6f379aeb7a:"
  sensitive = true
}

variable "my_password" {
  default = "default_password"
  sensitive = true  
}

