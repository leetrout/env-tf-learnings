terraform {
  backend "s3" {
    bucket = "zenput-testing-env0-state"
    key    = "mystate"
    region = "us-east-2"
  }
}

variable "seed" {
    type = number
    default = 5
}

module "my_rando" {
    source = "../modules/rando"
    seed = var.seed
}
