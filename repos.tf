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

  license = "cc"
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
