variable "folders" {
  default = ["infra"]
}

variable "jobs" {
  default = [
    { name = "infra/roboshop", repo_url = "https://github.com/upendraugrarapu/roboshop-infra" }
  ]
}

