output "id" {
  value       = "${join("", aws_elasticache_replication_group.default.*.id)}"
  description = "Redis cluster id"
}

output "security_group_id" {
  value       = "${join("", aws_security_group.default.*.id)}"
  description = "Security group id"
}

output "port" {
  value       = "${var.port}"
  description = "Redis port"
}

output "host" {
  value       = "${element(coalescelist(compact(list(module.dns.hostname)), aws_elasticache_replication_group.default.*.primary_endpoint_address), 0)}"
  description = "Redis host"
}
