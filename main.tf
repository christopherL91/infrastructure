terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.41.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

module "dns" {
  source = "./modules/dns"
}
