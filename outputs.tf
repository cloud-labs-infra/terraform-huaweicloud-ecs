output "ip" {
  description = "Compute Instance Private IP"
  value       = huaweicloud_compute_instance.main.access_ip_v4
}