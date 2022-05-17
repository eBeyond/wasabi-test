
provider "wasabi" {
  region                      = "eu-central-2"
  access_key                  = trimspace(var.s3_access_key)
  secret_key                  = trimspace(var.s3_secret_key)
  s3_force_path_style         = true
  skip_requesting_account_id  = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  max_retries                 = 3
  endpoints {
  #   sts = var.endpoint
     iam = "iam.wasabisys.com"
     s3 = "s3.eu-central-2.wasabisys.com"
  }
}


