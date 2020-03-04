# Learning Terraform

This repository contains some terraform try-outs based by an [article](https://thorsten-hans.com/terraform-the-definitive-guide-for-azure-enthusiasts) by Thorsten Hans.

## Commands

```ps
choco install terraform -y #optional: if terraform isn't already installed
terraform init
terraform plan -var-file="local.tfvars"
terraform apply -var-file="local.tfvars"
terraform apply -var-file="local.tfvars" --auto-approve #optional

# get all the neccessary output variables for the next steps
terraform output instrumentation_key

terraform output appservice_dns_name
#!! HERE WE NEED ONLY the SUBDOMAIN

az webapp config appsettings set --resource-group terraform-group --name jf-terraform-app-linux-app-svc --settings INSTRUMENTATION_KEY=1408c5c7-c3c4-4a96-bf67-bd7d7d990dbe



# cleanup
terraform destroy
```

## Additional infos

# Content of local.tfvars

Because it is on the .gitignore list

```
tags = {
  author = "Josef Fürlinger"
}

appservice_plan_tier = "Basic"
appservice_plan_size = "B1"
```

## Ressources

* [Official Documentation](https://www.terraform.io/docs/)