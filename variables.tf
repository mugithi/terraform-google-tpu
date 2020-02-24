/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


variable "project_id" {
  description = "The ID of the project in which the resource belongs"
}

variable "tpu_name" {
  description = "The immutable name of the TPU."
}

variable "zone" {
  description = "The GCP location for the TPU."
  default     = "europe-west4-a"
}

variable "accelerator_type" {
  description = "The type of hardware accelerators associated with this node."
  default     = "v3-8"
}

variable "pytorch_version" {
  description = "The version of Tensorflow or Pytorch running in the Node. You can use data.google_tpu_tensorflow_versions.available.versions[0] to pick latest version of Tensorflow"
  default     = "pytorch-nightly"
}

variable "cidr_block" {
  description = "The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block."
  default     = "10.3.0.0/29"
}

variable "network" {
  description = "The name of a network to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, default will be used."
  default     = "default"
}

variable "preemptible" {
  description = "Sets the scheduling options for this TPU instance "
  default     = true
}

