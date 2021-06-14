variable "seed" {
    type = number
    default = 4
}

module "my_rando" {
    source = "../modules/rando"
    seed = var.seed
}