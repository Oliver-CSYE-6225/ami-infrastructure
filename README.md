# ami-infrastructure

Steps to manage CI-CD:
1) Update CI-CD workflow in .github/workflows folder
2) pull_request.yml file is used for configure the workflow to be run on pull request
3) push.yml is used to configure the workflow to be run on push request
4) AMI is built as a part of the workflow


Steps to create, update and destroy Infra:<br><br>
1)install terraform on your system<br>
2)Configure aws profiles on aws cli with the following command [aws configure --profile profilename]<br>
3) Create .tfvars file to provide values for the variables used in variables.tf<br>
4) Configure the profile aws_profile var for with the profilename used above<br>
5) cd into the infrastructure repo directory and run following commands<br>
6) terraform init<br>
7) terraform fmt<br>
8) terraform plan -var-file="filename.tfvars"<br>
9) terraform apply -var-file="filename.tfvars"<br>
10) To destroy infra, terraform destroy -var-file="filename.tfvars"<br>

Demo Change
