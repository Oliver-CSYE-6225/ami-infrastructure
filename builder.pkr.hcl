build {
  name = "packer-template-v1"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]


  provisioner "shell" {
    environment_vars = [
      "FOO=hello world",
    ]
    inline = [
      "sleep 30",
      "sudo apt-get update",
      "sleep 30",
      "sudo apt-get upgrade -y",
      "sleep 30",
      "sudo apt-get update",
      "sudo apt-get install apache2 -y",
      "sudo apt install openjdk-11-jre-headless -y",
      "sleep 30",
      "sudo apt update",
      "sudo apt install ruby-full -y",
      "sudo apt install wget",
      "wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install",
      "chmod +x ./install",
      "sudo ./install auto > /tmp/logfile",
      "sudo service codedeploy-agent status",
      "sudo service codedeploy-agent start",
      "sudo service codedeploy-agent status",
      "sleep 30"
      "sudo apt update",
      "sudo apt install -y yum",
      "sudo yum install amazon-cloudwatch-agent",
      "sudo service amazon-cloudwatch-agent status",
      "sudo service amazon-cloudwatch-agent start",
      "sudo service amazon-cloudwatch-agent status",
      "echo \"FOO is $FOO\" > example.txt",
    ]
  }
}