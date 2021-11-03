source "amazon-ebs" "ubuntu" {
  access_key      = "${var.access_key}"
  secret_key      = "${var.secret_key}"
  region          = "${var.aws_region}"
  instance_type   = "${var.instance_type}"
  subnet_id       = "${var.subnet_id}"
  source_ami      = "${var.source_ami}"
  ssh_username    = "${var.ssh_username}"
  ami_name        = "${var.ami_name}"
  ami_description = "${var.ami_description}"
  ami_users = "${var.ami_users}"
  launch_block_device_mappings {
    device_name           = "/dev/sda1"
    volume_size           = 8
    volume_type           = "gp2"
    delete_on_termination = true
  }
}