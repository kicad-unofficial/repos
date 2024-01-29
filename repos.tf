module "repo_symbols" {
  source      = "./modules/repo"
  name        = "symbols"
  description = "Symbol libraries for KiCad 6."

  topics = [
    "kicad",
    "kicad-library",
    "kicad-symbols",
  ]

  license = "cc"
  copyright = {
    since = 2022
  }
}

module "repo_footprints" {
  source      = "./modules/repo"
  name        = "footprints"
  description = "Footprint libraries for KiCad 6."

  topics = [
    "kicad",
    "kicad-library",
    "kicad-footprints",
  ]

  license          = "cc"
  license_addendum = <<-EOT
    Official manufacturer 3D model files remain the property of their respective
    creators. These models use the `.official.step` file extension.

    SnapEDA 3D models are made available under the Creative Commons CC-BY-SA 4.0
    License as per the SnapEDA website, https://snapeda.com. These models use the
    `.snapeda.step` file extension.

    Where necessary, these third-party models have been rotated and translated to
    align with the footprint but are otherwise unmodified.

    All remaining 3D model files are original creations and are made available under
    the same license as the footprints.
  EOT

  copyright = {
    since = 2022
  }
}

module "repo_bom" {
  source      = "./modules/repo"
  name        = "bom"
  description = "BOM generation plugins for KiCad 6."

  topics = [
    "kicad",
    "kicad-plugin",
    "kicad-bom-generator",
    "bom",
    "bill-of-materials",
  ]

  license = "mit"
  copyright = {
    since = 2022
  }
}


module "repo_dotgithub" {
  source      = "./modules/repo"
  name        = ".github"
  description = "GitHub community health files."
  license     = "mit"
  copyright = {
    since = 2022
  }
}
