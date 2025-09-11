variable "token" {}

variable "secrets" {
  default = {
    roboshop-dev = {
      description = "RobeShop App Component All secrets"
    }
    roboshop-infra = {
      description = "Roboshop Infra related secrets"
    }
  }
}

variable "values" {
  default = {
    cart = {
      secret = "roboshop-dev"
      value = {
        REDIS_HOST     = "redis-dev.omshiva.shop"
        CATALOGUE_HOST = "catalogue-dev.omshiva.shop"
        CATALOGUE_PORT = "8080"
      }
    }

    catalogue = {
      secret = "roboshop-dev"
      value = {
        MONGO       = "true"
        MONGO_URL   = "mongodb://mongodb-dev.omshiva.shop:27017/catalogue"
      }
    }

    user = {
      secret = "roboshop-dev"
      value = {
        MONGO     = "true"
        REDIS_URL = "redis://redis-dev.omshiva.shop:6379"
        MONGO_URL = "mongodb://mongodb-dev.omshiva.shop:27017/users"
      }
    }

    shipping = {
      secret = "roboshop-dev"
      value = {
        CART_ENDPOINT = "cart:8080"
        DB_HOST       = "mysql-dev.omshiva.shop"
        username      = "root"
        password      = "RoboShop@1"
      }
    }

    payment = {
      secret = "roboshop-dev"
      value = {
        CART_HOST = "cart-dev.omshiva.shop"
        CART_PORT = "8080"
        USER_HOST = "user-dev.omshiva.shop"
        USER_PORT = "8080"
        AMQP_HOST = "rabbitmq-dev.omshiva.shop"
        AMQP_USER = "roboshop"
        AMQP_PASS = "roboshop123"
      }
    }

    frontend = {
      secret = "roboshop-dev"
      value = {
        catalogue_url  = "http://catalogue-dev.omshiva.shop:8080/"
        user_url       = "http://user-dev.omshiva.shop:8080/"
        cart_url       = "http://cart-dev.omshiva.shop:8080/"
        payment_url    = "http://payment-dev.omshiva.shop:8080/"
        shipping_url   = "http://shipping-dev.omshiva.shop:8080/"
      }
    }

    rabbitmq = {
      secret = "roboshop-dev"
      value = {
        username = "roboshop"
        password = "roboshop123"
      }
    }

    mysql = {
      secret = "roboshop-dev"
      value = {
        username = "root"
        password = "RoboShop@1"
      }
    }

    ssh = {
      secret = "roboshop-infra"
      value = {
        username = "azuser"
        password = "DevOps@123456"

      }
    }
  }
}
