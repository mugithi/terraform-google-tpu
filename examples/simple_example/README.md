# Simple Example

This example illustrates how to use the `tpu` module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Outputs

| Name | Description |
|------|-------------|
| id | GCP ID of the Cloud TPU POD resource |
| network\_endpoints | The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first |
| tpu\_service\_account | The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

To provision this example, run the following from within this directory:
- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure
