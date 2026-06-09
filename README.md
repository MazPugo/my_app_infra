# my_app Infrastructure

Terraform infrastructure for my_app on DigitalOcean.

## Requirements
- Terraform >= 1.0
- DigitalOcean account
- SSH key added to DigitalOcean

## Project Structure
my_app_infra/
├── modules/
│   ├── droplet/          - app droplet module
│   └── database/         - database droplet module
└── prod/                 - production environment

## Resources
- App droplet: my-app (FastAPI app)
- Database droplet: my-app-db (PostgreSQL)

## Usage
cd prod
terraform init
terraform plan
terraform apply

## Destroy infrastructure
terraform destroy

## Variables
do_token - DigitalOcean API token (required)
ssh_key_id - SSH key ID (required)

## Outputs
db_droplet_ip - Database droplet IP address
db_droplet_name - Database droplet name

## Security
- API tokens stored in GitHub Secrets
- terraform.tfvars gitignored
- State files gitignored
- 
