resource "aws_iot_certificate" "cert" {
  csr    = "${file("./csr/csr.pem")}"
  active = true
}
