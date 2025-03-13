terraform {
  required_providers {
    zpa = {
      source  = "zscaler/zpa"
      version = "~> 4.0.0"
    }
  }
}

provider "zpa" {
  client_id     = var.zpa_client_id
  client_secret = var.zpa_client_secret
  customer_id   = var.zpa_customer_id
}

# 새로운 ZPA Application Segments 생성
resource "zpa_application_segment" "app_segment_1" {
  name           = "App Segment 1"
  description    = "Application Segment for app1.example.com"
  domain_names   = ["app1.example.com"]
  enabled        = true
}

resource "zpa_application_segment" "app_segment_2" {
  name           = "App Segment 2"
  description    = "Application Segment for app2.example.com"
  domain_names   = ["app2.example.com"]
  enabled        = true
}

# 변수 설정
variable "zpa_client_id" {}
variable "zpa_client_secret" {}
variable "zpa_customer_id" {}
