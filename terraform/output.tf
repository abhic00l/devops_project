

output "instance_public_ip" {
    value = module.dev_infra.instance_public_ip
}

output "instance_private_ip" {
    value = module.dev_infra.instance_private_ip
}

output "instance_public_dns" {
    value = module.dev_infra.instance_public_dns
}