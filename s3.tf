resource "wasabi_bucket" "test" {
  bucket = "sys-int-test-123"
}

data "template_file" "policy" {
  template = "${file("${path.module}/templates/policy.tpl")}"
}

resource "wasabi_policy" "policy" {
  policy = data.template_file.policy.rendered
  name = "test-policy"
}