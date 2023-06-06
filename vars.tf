variable "folders" {
  default = ["infra", "CI-Pipeline"]
}

variable "m-jobs" {
  default = [
    {  name = "roboshop", folder = "infra", repo_url = "https://github.com/upendraugrarapu/roboshop-infra" },
    {  name = "frontend", folder = "CI-Pipeline", repo_url = "https://github.com/upendraugrarapu/frontend" },
    {  name = "cart", folder = "CI-Pipeline", repo_url = "https://github.com/upendraugrarapu/cart" },
    {  name = "catalogue", folder = "CI-Pipeline", repo_url = "https://github.com/upendraugrarapu/catalogue" },
    {  name = "user", folder = "CI-Pipeline", repo_url = "https://github.com/upendraugrarapu/user" },
    {  name = "shipping", folder = "CI-Pipeline", repo_url = "https://github.com/upendraugrarapu/shipping" },
    {  name = "payment", folder = "CI-Pipeline", repo_url = "https://github.com/upendraugrarapu/payment" }
  ]
}
variable "s-job"{
  default =[]
}
variable "force" {
  default = false
}