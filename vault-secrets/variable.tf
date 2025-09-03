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
        REDIS_HOST="redis.omshiva.shop"
        CATALOGUE_HOST="catalogue.omshiva.shop"
        CATALOGUE_PORT="8080"
      }
    }

    frontend={
      secret = "roboshop-dev"
      value = {
        catalogue_url = "https://catalogue.omshiva.shop:8080"
        user_url = "https://user.omshiva.shop:8080"
        cart_url = "https://cart.omshiva.shop:8080"
        payment_url = "https://payment.omshiva.shop:8080"
        shipping_url = "https://shipping.omshiva.shop:8080"
      }
    }

    catalogue ={
      secret = "roboshop-dev"
      value = {
        MONGO="true"
        MONGO_URL="mongodb://mongodb.omshiva.shop:27017/catalogue"
      }
    }

    payment ={
      secret = "roboshop-dev"
      value = {
        CART_HOST="cart.omshiva.shop"
        CART_PORT="8080"
        USER_HOST="user.omshiva.shop"
        USER_PORT="8080"
        AMQP_HOST="rabbitmq.omshiva.shop"

        AMQP_USER="roboshop"
        AMQP_PASS="roboshop123"
      }
    }

    shipping ={
      secret = "roboshop-dev"
      value = {
        CART_ENDPOINT="cart.omshiva.shop:8080"
        DB_HOST="mysql.omshiva.shop"
      }
    }

    user ={
      secret = "roboshop-dev"
      value = {
        MONGO="true"
        REDIS_URL="redis://redis.omshiva.shop:6379"
        MONGO_URL="mongodb://mongodb.omshiva.shop:27017/users"
      }
    }

    rabbitmq ={
      secret = "roboshop-dev"
      value = {
        username="roboshop"
        passowrd="roboshop123"

      }
    }

    mysql ={
      secret = "roboshop-dev"
      value = {
        username="root"
        passowrd="RoboShop@1"
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