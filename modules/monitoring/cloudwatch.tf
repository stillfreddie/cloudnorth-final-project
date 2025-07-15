resource "aws_cloudwatch_log_group" "cloudnorth-app-logs" {
  name              = "/cloudnorth/app"
  retention_in_days = 30  # <-- Keeps logs for 30 days; adjust as needed
  tags = {
    Project = "CloudNorth"
  }
}
