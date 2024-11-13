provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-1"

  tags = {
    Environment          = "Dev"
    git_commit           = "2c772f1561ef5b09df821e1d327761f4eddc9857"
    git_file             = "code/simple_s3.tf"
    git_last_modified_at = "2024-11-13 17:39:46"
    git_last_modified_by = "66951772+joserphc@users.noreply.github.com"
    git_modifiers        = "66951772+joserphc/tprendervill"
    git_org              = "joserphc"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "d68a987f-266c-404f-ae1e-48434c944b2e"
  }
}


