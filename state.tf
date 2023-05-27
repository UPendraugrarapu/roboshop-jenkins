terraform {
  backend "s3" {
    bucket = "terraform-roboshop"
    key = "jenkins/terraform-tfstate"
    region = "us-east-1"
  }
}

