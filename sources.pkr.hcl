source "amazon-ebs" "ubuntu" {
  access_key      = "${secrets.access_key}"
  secret_key      = "${secrets.secret_key}"
  region          = "${secrets.aws_region}"
  instance_type   = "${secrets.instance_type}"
  subnet_id       = "${secrets.subnet_id}"
  source_ami      = "${secrets.source_ami}"
  ssh_username    = "${secrets.ssh_username}"
  ami_name        = "${secrets.ami_name}"
  ami_description = "${secrets.ami_description}"
  ami_users = "${secrets.ami_users}"
  launch_block_device_mappings {
    device_name           = "/dev/sda1"
    volume_size           = 8
    volume_type           = "gp2"
    delete_on_termination = true
  }
}