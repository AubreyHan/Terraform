resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "statesto" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  force_destroy = false
  location      = "ASIA"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}


