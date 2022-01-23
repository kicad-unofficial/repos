output "org" {
  description = "The GitHub organization."
  value       = "kicad-unofficial"
}

output "app" {
  description = "The GitHub app used to perform GitHub API operations."
  value = {
    id              = "166599"
    installation_id = "22535608"
  }
}

output "commit_author" {
  description = "The Git commit author."
  value = {
    name  = "kicad-automation[bot]"
    email = "98242800+kicad-automation[bot]@users.noreply.github.com"
  }
}
