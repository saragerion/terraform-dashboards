resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "${local.environment}-${local.service_name}-${local.service_name}"

  dashboard_body = templatefile("dashboard.tftpl", { aws_region = var.aws_region})
}