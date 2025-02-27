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

module "compute_instance" {
  source  = "terraform-google-modules/vm/google//modules/compute_instance"
  version = "~> 13.0"

  region              = "us-east1"
  zone                = "us-east1-b"
  subnetwork          = "default"
  subnetwork_project  = "ninth-palace-423513-n5"
  num_instances       = "1"
  hostname            = "instance-simple"
  instance_template   = module.instance_template.self_link
  deletion_protection = false
}