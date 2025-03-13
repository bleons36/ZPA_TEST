terraform {
  required_providers {
    zpa = {
      source  = "zscaler/zpa"
      version = "~> 4.0.0"
    }
  }
}


provider "zpa" {
  client_id = "MTQ0MTMxOTk2NDMwMzY5ODYyLTY2ZWJlNTBkLTFmNTItNGE0ZS1hMDBkLTJiNTdlMTI2MDI4OQ=="
  client_secret = "-Sl[H]O;#1yu.Mdy70WKC'=$0<V6?bkV"
  zpa_customer_id  = "144131996430368768"
  zpa_cloud  = "PRODUCTION"
  vanity_domain = "lab.expernet.co.kr"
  use_legacy_client = false

}


# 새로운 ZPA Application Segments 생성
resource "zpa_application_segment" "app_segment_1" {
  name           = "App Segment 1"
  description    = "Application Segment for app1.example.com"
  domain_names   = ["app1.example.com"]
  enabled        = true
}

# 변수 설정
variable "zpa_client_id" {}
variable "zpa_client_secret" {}
variable "zpa_customer_id" {}
