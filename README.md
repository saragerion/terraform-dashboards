# Terraform Dashboards

This project will walk you through how to deploy dashboards in your AWS account using a [local backend](https://www.terraform.io/language/settings/backends/local). 

#### Prerequisites

**Terraform CLI**

You can install Terraform locally from the [official Terraform installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli#install-terraform), or using 
[tfenv](https://github.com/tfutils/tfenv#installation)


**AWS CLI**

You can install the AWS CLI locally from the [official AWS installation guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).
Before you start, make sure that you are correctly authenticated:
```bash
aws sts get-caller-identity
```
Make sure that your AWS credentials have enough permissions to create dashboards in your AWS account.  
If this is your own or your company's account, authenticate using an [IAM role with short-lived credentials and MFA](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-role.html).


## Amazon CloudWatch

Amazon CloudWatch dashboards are customizable home pages in the CloudWatch console that you can use to monitor your resources in a single view, even those resources that are spread across different Regions. 
You can use CloudWatch dashboards to create customized views of the metrics and alarms for your AWS resources.  

More information about CloudWatch dashboards can be found [here](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Dashboards.html).

#### Deploy your dashboard

Clone or fork this repository:
`git clone git@github.com:saragerion/terraform-dashboards.git`

In the terminal, go into the cloudwatch folder:
`cd terraform-dashboards/terraform/cloudwatch`

Initialize the working directory containing Terraform configuration files:
`terraform init`

Validate the configuration files in the directory:
`terraform validate`

Create an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure:
`terraform plan`

Execute the actions:
`terraform apply`

Optional: export an already existing CloudWatch dashboard to replicate it in Terraform 
`aws cloudwatch get-dashboard --dashboard-name my-existing-dashboard`