variable "tools" {
  default = {
    vault = {
      vm_size = "Standard_F1s"
    }
  }
}

variable "rg_name" {
  default = "project-setup-1"
}

variable "rg_location" {
  default = "Uk West"
}