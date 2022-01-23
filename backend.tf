terraform {
  cloud {
    organization = "kicad-unofficial"

    workspaces {
      name = "repos"
    }
  }
}
