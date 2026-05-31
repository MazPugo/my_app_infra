# my_app Infrastructure

## Overview
Terraform infrastructure as code for my_app deployed on DigitalOcean.

## Architecture# my_app_infra
Terraform infrastructure code for my_app DigitalOcean droplet
## Prerequisites
- Terraform >= 1.0
- DigitalOcean account
- SSH key added to DigitalOcean
- DigitalOcean API token

## Project Structure

my_app_infra/
├── modules/
│   └── droplet/          # reusable droplet module
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── providers.tf
├── prod/                 # production environment
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── providers.tf
├── .github/
│   └── workflows/
│       └── terraform.yml # CI/CD pipeline
├── .gitignore
└── README.md


## Usage

### 1. Clone the repo

git clone https://github.com/MazPugo/my_app_infra.git
cd my_app_infa`

### 2. Create terraform.tfvars

cd prod
nano terraform.tfvar

Add your values:

do_token   = "dop_v1_xxxxxxxxxxxxxx"
ssh_key_id = "1234567"

### 3. Run Terraform

terraform init
terraform plan
terraform apply


### 4. Destroy infrastructure
terraform destroy


## Security
- API tokens stored in GitHub Secrets
- terraform.tfvars gitignored
- State files gitignored
- Lifecycle prevent_destroy enabled



