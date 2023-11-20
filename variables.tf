variable "subscriber_email_addresses" {
  description = "Lista de emails para receber as notificações de budget"
  type        = list(string)
  default     = ["guilherme.xh@hotmail.com", "guilherme.xh@gmail.com", "aledias.navy@gmail.com"]
}

variable "thresholds" {
  description = "Lista de thresholds em % para disparo dos alertas"
  type        = list(number)
  default     = [70, 80, 90, 100]
}