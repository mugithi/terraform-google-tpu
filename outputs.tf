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
  value = google_tpu_node.tpu.network_endpoints[0].ip_address
}

output "id" {
  value = google_tpu_node.tpu.id
}

output "tpu_service_account" {
  value = google_tpu_node.tpu.service_account
}

output "tensorflow_versions" {
  value = data.google_tpu_tensorflow_versions.available.versions
}

output "tpu_all_parameters" {
  value = google_tpu_node.tpu
}