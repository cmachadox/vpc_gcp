output "vpc" {
  value       = google_compute_network.vpc.name
  description = ""
}

output "Subnet-A-public" {
  value  = [google_compute_subnetwork.subnet_a_public.ip_cidr_range,
         google_compute_subnetwork.subnet_a_public.gateway_address,
         google_compute_subnetwork.subnet_a_public.region,
         google_compute_subnetwork.subnet_a_public.private_ip_google_access
  ]
  description = ""
}

output "Subnet-A-private" {
  value  = [google_compute_subnetwork.subnet_a_private.ip_cidr_range,
         google_compute_subnetwork.subnet_a_private.gateway_address,
         google_compute_subnetwork.subnet_a_private.region,
         google_compute_subnetwork.subnet_a_private.private_ip_google_access
  ]
  description = ""
}
