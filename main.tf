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

# 정책 그룹 생성
resource "zpa_policy_type" "access_policy" {
  policy_type = "ACCESS_POLICY"
}

# ZPA Access Policy Rule 생성 (기본적인 Allow Rule 예제)
resource "zpa_policy_access_rule" "example_rule" {
  name          = "Example Access Rule"
  description   = "Allow access for specific users and applications"
  action        = "ALLOW"
  operator      = "AND"
  policy_set_id = zpa_policy_type.access_policy.id

}

# 변수 설정
variable "zpa_client_id" {}
variable "zpa_client_secret" {}
variable "zpa_customer_id" {}
