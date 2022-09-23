This is an example repository for using terraform to manage a simple set of jenkins
resources.

This uses the terraform jenkins provider https://github.com/taiidani/terraform-provider-jenkins

The Jekins environment variables used by this repository are as follows

```shell
$ export JENKINS_URL="https://jenkins.url"
$ export JENKINS_USERNAME="username"
$ export JENKINS_PASSWORD="password"
```

This repository is intended to be run from gitlab, using the terraform gitlab integration, the following varibles 
must be set (for the labs, these are pre-populated)

```shell
export TF_HTTP_USERNAME=<user>
export TF_HTTP_PASSWORD=<gitlab_project_or_personal_access_token>
export TF_HTTP_ADDRESS="https://git.lab.oss.nz/api/v4/projects/<project_id>/terraform/state/<state_name>"
export TF_HTTP_LOCK_ADDRESS="${TF_HTTP_ADDRESS}/lock"
export TF_HTTP_UNLOCK_ADDRESS="${TF_HTTP_ADDRESS}/lock"
export TF_HTTP_LOCK_METHOD="POST"
export TF_HTTP_UNLOCK_METHOD="DELETE"
export TF_HTTP_RETRY_WAIT_MIN=5
```