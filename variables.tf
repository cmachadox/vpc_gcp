variable "project_id" {
  default                  = "id-project-gcp"
  type                     = string
  description              = "ID do projeto GCP"
}

variable "region" {
  default                  = "us-west1"
  type                     = string
  description              = "Região do projeto"
}

#--------------------------------------------------------------------------------- 
##### Variaveis VPC

 variable "tux_vpc" {
  default                  = "tux-vpc"
  type                     = string
  description              = "VPC do projeto TUX"
}

variable "subnet_a_public" {
default                    = {
  name                     = "a-public"
  ip_cidr_range            = "10.2.0.0/20"
  region                   = "us-west1"
  private_ip_google_access = "true"
  }

  type                     = object(
    {
  name                     = string
  ip_cidr_range            = string
  region                   = string
  private_ip_google_access = string
   }
    )
}
#-----------------------------------------------
variable "subnet_a_private" {
default                    = {
  name                     = "a-private"
  ip_cidr_range            = "10.2.16.0/20"
  region                   = "us-west1"
  private_ip_google_access = "true"
  }

  type                     = object(
    {
  name                     = string
  ip_cidr_range            = string
  region                   = string
  private_ip_google_access = string
   }
    )
}
