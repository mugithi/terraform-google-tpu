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

output "network_endpoints" {
  description = "The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first"
  value = module.tpu.network_endpoints
}

output "id" {
  description = "GCP ID of the Cloud TPU POD resource"
  value = module.tpu.id
}

output "tpu_service_account" {
  description = "The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data."
  value = module.tpu.tpu_service_account
}

