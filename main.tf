provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "pipipitchu"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}
