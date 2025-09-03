variable "token" {}
variable "secrets" {
  default = {
    roboshop-dev = {
      description = "RoboShop App Component All secrets"
    }
    roboshop-infra = {
      description = "RoboShop Infra related secrets"

    }
  }
}

variable "values" {
  default = {
    cart ={
      secret = "roboshop-dev"
      value = {
        zip = "zap",
        foo = "bar"
      }
    }
    ssh = {
      secret = "roboshop-infra"
      value ={
        username = "azuser"
        password = "Dev@12345678"
      }
    }
  }
}