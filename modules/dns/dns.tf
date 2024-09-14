terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.41.0"
    }
  }
}

data "cloudflare_zone" "zone" {
  name = "lillthors.dev"
}

resource "cloudflare_record" "personal_website" {
  zone_id = data.cloudflare_zone.zone.id
  type    = "CNAME"
  name    = "blog"
  content = "christopherl91.github.io"
  ttl     = 3600
  comment = "Managed by opentofu"
}
