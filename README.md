# Terraform Azure Sample

This Terraform configuration creates an Azure resource group.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed
- Azure subscription

## Configuration

### 1. Azure Authentication

Login to Azure CLI:
```bash
az login
```

### 2. Set Subscription ID

You can configure the Azure subscription ID in two ways:

**Option A: Environment Variable (Recommended)**
```bash
export ARM_SUBSCRIPTION_ID="your-subscription-id"
```

To get your subscription ID:
```bash
az account show --query id -o tsv
```

**Option B: In Provider Block**

Uncomment and set in `main.tf`:
```hcl
provider "azurerm" {
  features { }
  subscription_id = "your-subscription-id"
}
```

## Usage

### Initialize Terraform
```bash
terraform init
```

### Plan Changes
```bash
terraform plan -out=tfplan
```

### Apply Changes
```bash
terraform apply "tfplan"
```

### Destroy Resources
```bash
terraform destroy
```

## Resources Created

- **Resource Group**: `dev_tf_resources` in `eastus` region