provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-1"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "0ab1f72d-f82c-472a-9da3-0d5296d6176f"
    git_commit           = "9f4d438c9c9466aa816ee13063cce0a21fd8fb8e"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-13 17:42:30"
    git_last_modified_by = "66951772+joserphc@users.noreply.github.com"
    git_modifiers        = "66951772+joserphc"
    git_org              = "joserphc"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket" "qa_s3" {
  bucket_prefix = "qa-"

  tags = {
    Environment          = "QA"
    git_commit           = "2d54b378e0120aac60bdf369177e4bf700c07c3c"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-13 18:00:21"
    git_last_modified_by = "66951772+joserphc@users.noreply.github.com"
    git_modifiers        = "66951772+joserphc"
    git_org              = "joserphc"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "qa_s3"
    yor_trace            = "eb2c5278-843d-4c5f-b000-2f4566ce54d1"
  }
}

resource "aws_s3_bucket_ownership_controls" "qa_s3" {
  bucket = aws_s3_bucket.qa_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
