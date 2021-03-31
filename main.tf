provider "google" {
  project                  = var.project_id
  region                   = var.region
# credentials              = file("acn-adcc-cockpit-gcloud-da1d6aa74c77.json")
}

terraform {
  required_version         = "~> 0.12.0"
}

resource "google_compute_network" "vpc" {
  name                     = var.tux_vpc
  auto_create_subnetworks  = "false"
  routing_mode             = ""
  project                  = var.project_id
  description              = ""
}

resource "google_compute_subnetwork" "subnet_a_public" {
  name                     = var.subnet_a_public.name
  ip_cidr_range            = var.subnet_a_public.ip_cidr_range
  region                   = var.subnet_a_public.region
  private_ip_google_access = var.subnet_a_public.private_ip_google_access
  network                  = google_compute_network.vpc.id
  log_config {metadata     = "INCLUDE_ALL_METADATA"}
  
}

resource "google_compute_subnetwork" "subnet_a_private" {
  name                     = var.subnet_a_private.name
  ip_cidr_range            = var.subnet_a_private.ip_cidr_range
  region                   = var.subnet_a_private.region
  private_ip_google_access = var.subnet_a_private.private_ip_google_access
  network                  = google_compute_network.vpc.id
  log_config {metadata     = "INCLUDE_ALL_METADATA"}
  
}
