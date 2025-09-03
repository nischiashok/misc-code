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

    frontend={
      secret = "roboshop-dev"
      value = {
        catalogue_url = "https://catalogue-dev.omshiva.shop:8080"
        user_url = "https://user-dev.omshiva.shop:8080"
        cart_url = "https://cart-dev.omshiva.shop:8080"
        payment_url = "https://payment-dev.omshiva.shop:8080"
        shipping_url = "https://shipping-dev.omshiva.shop:8080"
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