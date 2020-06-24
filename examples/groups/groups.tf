# This configuration sample shows how to manage groups
provider "teamcity" {
  address = var.teamcity_url
  username = var.teamcity_username
  password = var.teamcity_password
}

resource "teamcity_group" "test_group" {
  name = "test-group"
  description = "Description of test group"
}

resource "teamcity_group" "short_group" {
  name = "grp"
}

resource "teamcity_group" "test_group_2" {
  key = "TEST_GROUP_2"
  name = "test-group-2"
  description = "Description of test group 2"
  # Group will be imported even if it exists in TeamCity
  import_if_exists = true
}
