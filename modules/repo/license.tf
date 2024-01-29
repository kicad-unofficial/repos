locals {
  license_content = templatefile(
    "${path.module}/templates/license-${var.license}.tftpl",
    {
      start_year = var.copyright.since
      end_year   = formatdate("YYYY", plantimestamp())
      holders    = concat(["James Harris"], var.copyright.holders)
    }
  )
}


resource "github_repository_file" "license" {
  repository          = github_repository.this.name
  branch              = github_repository.this.default_branch
  file                = "LICENSE"
  overwrite_on_create = true
  commit_author       = module.github.commit_author.name
  commit_email        = module.github.commit_author.email
  commit_message      = "Regenerate license from template."

  content = var.license_addendum == "" ? local.license_content : <<-EOT
    ${trimsuffix(local.license_content, "\n")}

    --------------------------------------------------------------------------------

    ${var.license_addendum}
  EOT
}
