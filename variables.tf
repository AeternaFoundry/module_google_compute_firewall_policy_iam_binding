variable "compute_firewall_policy_iam_bindings" {
  description = <<EOT
Map of compute_firewall_policy_iam_bindings, attributes below
Required:
    - members
    - name
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members = set(string)
    name    = string
    role    = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

