variable "cisco_apic_username" {
  type = string
}
variable "cisco_apic_password" {
  type = string
}
variable "cisco_apic_url" {
  type = string
}
variable "items" {
  type = map(object({
    name   = string
    boolean = bool
    }
  ))
}
