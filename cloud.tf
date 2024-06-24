terraform {
  cloud {
    organization = "LytvynovDev_org"

    workspaces {
      name = "nextjs-ci-cd"
    }
  }

  required_version = ">= 1.1.2"
}
