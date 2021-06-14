variable "pet_words" {
  type = number
  default = 2
}

variable "seed" {
    type = number
    default = 31
}

resource "random_pet" "lees_favorite" {
  length = var.pet_words
  keepers = {
      seed = var.seed
  }
}

output "lees_pet_name" {
  value = random_pet.lees_favorite.id
}