terraform {
  backend "s3" {
      bucket         = "maxbugga"
      key            = "myapp/dev/terraform.tfstate"
      region         = "us-east-1"
      dynamodb_table = "terraformstate"
  }
}