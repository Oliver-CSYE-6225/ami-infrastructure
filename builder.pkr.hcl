build {
  name = "packer-templare-v1"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]

  provisioner "shell" {
    environment_vars = [
      "FOO=hello world",
    ]
    inline = [
      "sudo apt-get update",
      "sudo apt-get upgrade -y",
      "sudo apt-get update",
      "sudo apt-get install apache2 -y",
      "sudo apt install openjdk-11-jre-headless -y",
      "echo \"FOO is $FOO\" > example.txt",
    ]
  }
}