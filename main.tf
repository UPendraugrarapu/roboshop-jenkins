resource "jenkins_folder" "folders" {
  count = length(var.folders)
  name = element(var.folders, count.index)
}

resource "jenkins_job" "example" {
  depends_on = [jenkins_folder.folders]
  count = length(var.jobs)
  name     =  lookup(element(var.jobs, count.index), "name", null)
  folder   = "/job/${lookup(element(var.jobs, count.index), "folder", null)}"
  template = templatefile("${path.module}/singbr-pipeline.xml", {
    repo_url = lookup(element(var.jobs, count.index), "repo_url", null)
  })

  lifecycle {
     ignore_changes = [template]
  }
}

data "aws_instance" "jenkins"{
   id = "i-0c0c01e1b15cff72f"
}
resource "aws_route53_record" "jenkins" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "jenkins.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [data.aws_instance.jenkins.public_ip]
}