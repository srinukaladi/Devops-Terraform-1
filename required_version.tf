terraform {
  required_version = "1.2.5" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "4.0.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
}

# parameter in the provider configuration
# Environmental  