#################
# ansible files #
#################

resource "null_resource" "transactional_update_run" {
  triggers = {
    transactional_update_run = filemd5("${path.module}/transactional_update_run.yaml")
  }
}

#####################
# external triggers #
#####################

resource "null_resource" "external" {
  triggers = var.external_triggers
}

#############
# variables #
#############

resource "null_resource" "variables" {
  triggers = {
    command = var.command
  }
}
