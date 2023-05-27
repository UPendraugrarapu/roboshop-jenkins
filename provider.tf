provider "taiidani/jenkins" {
  server_url = "http://172.31.1.101:8080"
  username   = data.aws_ssm_parameter.jenkins_user.value
  password   = data.aws_ssm_parameter.jenkins_pass.value
  }
data "aws_ssm_parameter" "jenkins_user"{
  name = "jenkins.user"
}

data "aws_ssm_parameter" "jenkins_pass"{
  name = "jenkins.pass"
}
