terraform {
  required_providers {
    zpa = {
      source  = "zscaler/zpa"
      version = "~> 3.0.0"
    }
  }
}

provider "zpa" {
  zpa_client_id     = var.zpa_client_id
  zpa_client_secret = var.zpa_client_secret
  zpa_customer_id   = var.zpa_customer_id
}

resource "zpa_app_connector_group" "example" {
  name                          = "Example"
  description                   = "Example"
  enabled                       = true
  city_country                  = "San Jose, CA"
  country_code                  = "US"
  latitude                      = "37.338"
  longitude                     = "-121.8863"
  location                      = "San Jose, CA, US"
  upgrade_day                   = "SUNDAY"
  upgrade_time_in_secs          = "66600"
  override_version_profile      = true
  version_profile_name          = "New Release"
  dns_query_type                = "IPV4_IPV6"
  use_in_dr_mode                = true
}

# ZPA Segment Group 생성 (없으면 생성)
resource "zpa_segment_group" "default" {
  name        = "Default Segment Group"
  description = "Automatically created segment group"
}

# ZPA Server Group 생성 (없으면 생성)
resource "zpa_server_group" "default" {
  name        = "Default Server Group"
  description = "Automatically created server group"
  dynamic_discovery = false
}

# 새로운 ZPA Application Segment 생성
resource "zpa_application_segment" "app_segment_1" {
  name              = "App Segment 1"
  description       = "Application Segment for app1.example.com"
  domain_names      = ["app1.example.com"]
  enabled           = true
  segment_group_id  = zpa_segment_group.default.id  # 필수 추가
  tcp_port_ranges   = ["80", "443"]
} 



# 변수 설정
variable "zpa_client_id" {}
variable "zpa_client_secret" {}
variable "zpa_customer_id" {}
