resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name = var.params[count.index].name
  type = var.params[count.index].type
  value = var.params[count.index].value
}
variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev,devopsd73.store", type = "String"},
    { name = "roboshop.dev.frontend.user", value = "http://user-dev,devopsd73.store", type = "String"},

    { name = "roboshop.dev.frontend.cart", value = "http://cart-dev,devopsd73.store", type = "String"},
    { name = "roboshop.dev.frontend.payment", value = "http://payment-dev,devopsd73.store", type = "String"},


    { name = "demo2", value = "demo2", type = "String"},

  ]
}