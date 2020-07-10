resource "google_sql_database" "database" {
  name     = "group-database"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name   = "group-database-instance"
  region = var.region
  settings {
    tier = "db-f1-micro"
  }
}
