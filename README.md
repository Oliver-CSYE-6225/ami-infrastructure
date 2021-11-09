# ami-infrastructure

Steps to manage CI-CD:
1) Update CI-CD workflow in .github/workflows folder
2) pull_request.yml file is used for configure the workflow to be run on pull request
3) push.yml is used to configure the workflow to be run on push request
4) AMI is built as a part of the workflow


Steps to  manage Infra:

1)install terraform on your system
2)Configure aws profiles on aws cli with the following command [aws configure --profile profilename]
3) Create .tfvars file to provide values for the variables used in variables.tf
4) Configure the profile aws_profile var for with the profilename used above
5) cd into the infrastructure repo directory and run following commands
6) terraform init
7) terraform fmt
8) terraform plan -var-file="filename.tfvars"
9) terraform apply -var-file="filename.tfvars"
10) terraform destroy -var-file="filename.tfvars"
