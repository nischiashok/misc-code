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

    cart = {
      secret = "roboshop-dev"
      value = {
        REDIS_HOST     = "redis-dev.omshiva.shop"
        CATALOGUE_HOST = "catalogue-dev.omshiva.shop"
        CATALOGUE_PORT = "8080"
      }
    }

    frontend = {
      secret = "roboshop-dev"
      value = {
        catalogue_url   = "https://catalogue-dev.omshiva.shop:8080"
        user_url        = "https://user-dev.omshiva.shop:8080"
        cart_url        = "https://cart-dev.omshiva.shop:8080"
        payment_url     = "https://payment-dev.omshiva.shop:8080"
        shipping_url    = "https://shipping-dev.omshiva.shop:8080"

        CATALOGUE_HOST  ="catalogue-dev.omshiva.shop:8080"
        CATALOGUE_PORT  =8080
        USER_HOST       ="user-dev.omshiva.shop:8080"
        USER_PORT       =8080
        CART_HOST       ="cart-dev.omshiva.shop:8080"
        CART_PORT       =8080
        SHIPPING_HOST   ="shipping-dev.omshiva.shop:8080"
        SHIPPING_PORT   =8080
        PAYMENT_HOST    ="payment-dev.omshiva.shop:8080"
        PAYMENT_PORT    =8080

      }
    }

    catalogue = {
      secret = "roboshop-dev"
      value = {
        MONGO = "true"
        MONGO_URL = "mongodb://mongodb-dev.omshiva.shop:27017/catalogue"
        DB_TYPE = "mongo"
        APP_GIT_URL = "https://github.com/roboshop-devops-project-v3/catalogue"
        DB_HOST = "mongodb-dev.omshiva.shop"
        SCHEMA_FILE = "db/master-data.js"
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

    shipping = {
      secret = "roboshop-dev"
      value = {
        CART_ENDPOINT = "cart-dev.omshiva.shop:8080"
        DB_HOST       = "mysql-dev.omshiva.shop"
        DB_USER      = "root"
        DB_PASS      = "RoboShop@1"
        username      = "root"
        passowrd      = "RoboShop@1"
        DB_TYPE       = "mysql"
        APP_GIT_URL   = "https://github.com/roboshop-devops-project-v3/shipping"
        DB_HOST       = "mysql-dev.omshiva.shop"
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

    rabbitmq = {
      secret = "roboshop-dev"
      value = {
        username = "roboshop"
        passowrd = "roboshop123"

      }
    }

    mysql = {
      secret = "roboshop-dev"
      value = {
        username = "root"
        passowrd = "RoboShop@1"
      }
    }


    sec = {
      secret = "roboshop-infra"
      value = {
        username = "azuser"
        password = "Dev@12345678"
      }
    }
  }
}
