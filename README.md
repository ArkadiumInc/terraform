# A [terraform](https://github.com/hashicorp/terraform) docker image built to run in Azure Pipelines

## Why
Despite `terraform` has it's own docker images it's impossible to run them in Azure Pipelines.
Azure Pipelines' [container jobs](https://docs.microsoft.com/en-us/azure/devops/pipelines/process/container-phases?view=azure-devops#non-glibc-based-containers) 
require additional tools (node, bash, sudo, shadow) to be present in your docker image. Thus, this repo was created.

## Example

In this example pipeline you'll be asked for DB connection string and index number of a desired migration:

```yaml
# azure-pipelines.yml in your db migrations repo
trigger: none

container: ghcr.io/arkadiuminc/terraform:main

steps:
- script: terraform plan -o tfplan
  displayName: Terraform Plan
```

## Arkadium

[We are hiring!](https://apply.workable.com/arkadium-1/)
