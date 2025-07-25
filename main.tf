resource "random_string" "workspace_test" {
  length  = 16
  special = true
  upper   = true
}

resource "random_password" "test_password" {
  length  = 12
  special = true
}

# Outputs to verify
output "test_string" {
  value = random_string.workspace_test.result
}

output "workspace_info" {
  value = "Workspace: ${var.workspace_name} in ${var.environment}"
}
