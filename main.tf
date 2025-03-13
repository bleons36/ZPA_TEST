terraform {
  required_providers {
    zpa = {
      source  = "zscaler/zpa"
      version = "latest"
    }
  }
}

provider "zpa" {
  client_id     = var.zpa_client_id
  client_secret = var.zpa_client_secret
  customer_id   = var.zpa_customer_id
}

resource "zpa_access_policy" "example_policy" {
  name        = "Example Access Policy"
  description = "An example policy for ZPA"
  action      = "ALLOW"
  operator    = "AND"
  conditions {
    application = ["example-app"]
    user       = ["example-user"]
  }
}

variable "zpa_client_id" {}
variable "zpa_client_secret" {}
variable "zpa_customer_id" {}
