terraform {
  backend "s3" {
    bucket         = "jpposjljkjldjfldjd"
    key            = "devopsb27.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true


  }
}