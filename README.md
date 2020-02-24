# terraform-google-tpu

This module was generated from [terraform-google-module-template](https://github.com/terraform-google-modules/terraform-google-module-template/), which by default generates a module that simply Cloud TPU POD. As the module develops, this README should be updated.

The resources/services/activations/deletions that this module will create/trigger are:

- Create a Cloud TPU POD

## Usage

Basic usage of this module is as follows:

```hcl
module "tpu" {
  source           = "github.com/mugithi/terraform-google-tpu"
  project_id       = "network-host-project-243718"
  zone             = "europe-west4-a"
  tpu_name         = "tpu_name_001"
  accelerator_type = "v3-8"
  network          = "default"
  preemptible      = true
}
```

Functional examples are included in the
[examples](./examples/) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| accelerator\_type | The type of hardware accelerators associated with this node. | string | `"v3-8"` | no |
| cidr\_block | The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block. | string | `"10.3.0.0/29"` | no |
| network | The name of a network to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, default will be used. | string | `"default"` | no |
| preemptible | Sets the scheduling options for this TPU instance | string | `"true"` | no |
| project\_id | The ID of the project in which the resource belongs | string | n/a | yes |
| pytorch\_version | The version of Tensorflow or Pytorch running in the Node. You can use data.google_tpu_tensorflow_versions.available.versions[0] to pick latest version of Tensorflow | string | `"pytorch-nightly"` | no |
| tpu\_name | The immutable name of the TPU. | string | n/a | yes |
| zone | The GCP location for the TPU. | string | `"europe-west4-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | GCP ID of the Cloud TPU POD resource |
| network\_endpoints | The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first |
| tensorflow\_versions | All values of PyTorch and Tensorflow versions avaiable to accelerators |
| tpu\_all\_parameters | All the parameters avaiable in the TPU POD resource |
| tpu\_service\_account | The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

These sections describe requirements for using this module.

### Software

The following dependencies must be available:

- [Terraform][terraform] v0.12
- [Terraform Provider for GCP][terraform-provider-gcp] plugin v2.0

### Service Account

A service account with the following roles must be used to provision
the resources of this module:

- TPU Admin: `roles/tpu.admin`

The [Project Factory module][project-factory-module] and the
[IAM module][iam-module] may be used in combination to provision a
service account with the necessary roles applied.

### APIs

A project with the following APIs enabled must be used to host the
resources of this module:

- Google Cloud TPU API: `tpu.googleapis.com`

The [Project Factory module][project-factory-module] can be used to
provision a project with the necessary APIs enabled.

## Contributing

Refer to the [contribution guidelines](./CONTRIBUTING.md) for
information on contributing to this module.

[iam-module]: https://registry.terraform.io/modules/terraform-google-modules/iam/google
[project-factory-module]: https://registry.terraform.io/modules/terraform-google-modules/project-factory/google
[terraform-provider-gcp]: https://www.terraform.io/docs/providers/google/index.html
[terraform]: https://www.terraform.io/downloads.html
