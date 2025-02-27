module "instance_template" {
  source  = "terraform-google-modules/vm/google//modules/instance_template"
  version = "~> 13.0"

  region             = "us-east1"
  project_id         = "ninth-palace-423513-n5"
  subnetwork         = "default"
  subnetwork_project = "ninth-palace-423513-n5"
  service_account = {
    email  = "compute-engine@ninth-palace-423513-n5.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
  machine_type	= "e2-micro"

}