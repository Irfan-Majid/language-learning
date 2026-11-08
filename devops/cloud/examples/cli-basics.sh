# AWS CLI examples (install: https://aws.amazon.com/cli/)
aws sts get-caller-identity
aws s3 ls
aws ec2 describe-instances --query "Reservations[].Instances[].InstanceId"

# Azure CLI
az login
az group list
az vm list

# GCP CLI
gcloud auth login
gcloud projects list
gcloud compute instances list
