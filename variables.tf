variable "items" {
  type = map(object({
    name   = string
    boolean = bool
    }
  ))
}
