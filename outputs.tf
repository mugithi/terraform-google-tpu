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
  value = google_tpu_node.tpu.network_endpoints[0].ip_address
}

output "id" {
  description = "GCP ID of the Cloud TPU POD resource"
  value = google_tpu_node.tpu.id
}

output "tpu_service_account" {
  description = "The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data."
  value = google_tpu_node.tpu.service_account
}

output "tpu_name" {
  description = "Name of the Cloud TPU pod that is created"
  value = google_tpu_node.tpu.name
}

output "tpu_tensorflow_version" {
  description = "The version of tensorflow that is running in the Cloud TPU PODs"
  value = google_tpu_node.tpu.tensorflow_version
}

output "tpu_all_parameters" {
  description = "All the parameters avaiable in the TPU POD resource"
  value = google_tpu_node.tpu
}
