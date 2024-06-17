variable "route53_list" {
 description = "(Optional) The dimensions for the alarm's associated metric. For the list of available dimensions see the AWS documentation."
 default = []
}

variable "healthcheckid_list" {
 default = [""]
}

variable "reference_name" {
  description = "(Optional) This is a reference name used in Caller Reference (helpful for identifying single health_check set amongst others)"
  default = null
}

variable "fqdn" {
  description = "(Optional) The fully qualified domain name of the endpoint to be checked."
  default = null
}

variable "ip_address" {
  description = "(Optional) The IP address of the endpoint to be checked."
  default = null
}

variable "port" {
  description = "(Optional) The port of the endpoint to be checked."
  default = null
}

variable "type" {
  description = "(Required) The protocol to use when performing health checks. Valid values are HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED, CLOUDWATCH_METRIC and RECOVERY_CONTROL."
  default = null
}

variable "resource_path" {
  description = "(Optional) The path that you want Amazon Route 53 to request when performing health checks."
  default = "/"
}

variable "search_string" {
  description = "(Optional) String searched in the first 5120 bytes of the response body for check to be considered healthy. Only valid with HTTP_STR_MATCH and HTTPS_STR_MATCH."
  default = null
}

variable "failure_threshold" {
  description = "(Required) The number of consecutive health checks that an endpoint must pass or fail."
  default = "3"
}

variable "request_interval" {
  description = "(Required) The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request."
  default = "30"
}

variable "measure_latency" {
  description = "(Optional) A Boolean value that indicates whether you want Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console."
  default = "true"
}

variable "invert_healthcheck" {
  description = "Optional) A boolean value that indicates whether the status of health check should be inverted. For example, if a health check is healthy but Inverted is True , then Route 53 considers the health check to be unhealthy."
  default = null
}

variable "disabled" {
  description = "(Optional) A boolean value that stops Route 53 from performing health checks. When set to true, Route 53 will do the following depending on the type of health check: 1) For health checks that check the health of endpoints, Route5 53 stops submitting requests to your application, server, or other resource. 2) For calculated health checks, Route 53 stops aggregating the status of the referenced health checks. 3) For health checks that monitor CloudWatch alarms, Route 53 stops monitoring the corresponding CloudWatch metrics. "
  default = null
}

variable "enable_sni" {
  description = "(Optional) A boolean value that indicates whether Route53 should send the fqdn to the endpoint when performing the health check. This defaults to AWS' defaults: when the type is HTTPS enable_sni defaults to true, when type is anything else enable_sni defaults to false."
  default = null
}

variable "child_healthchecks" {
  description = "(Optional) For a specified parent health check, a list of HealthCheckId values for the associated child health checks."
  default = null
}

variable "child_health_threshold" {
  description = "(Optional) The minimum number of child health checks that must be healthy for Route 53 to consider the parent health check to be healthy. Valid values are integers between 0 and 256, inclusive"
  default = null
}

variable "regions" {
  description = "(Optional) A list of AWS regions that you want Amazon Route 53 health checkers to check the specified endpoint from."
  default = ["us-east-1", "us-east-2"]
}

variable "cloudwatch_alarm_name" {
  description = "(Optional) The name of the CloudWatch alarm."
  default = null
}

variable "cloudwatch_alarm_region" {
  description = ""
  default = "us-east-1"
}

variable "insufficient_data_health_status" {
  description = "(Optional) The status of the health check when CloudWatch has insufficient data about the state of associated alarm. Valid values are Healthy , Unhealthy and LastKnownStatus."
  default = null
}

variable "routing_control_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) for the Route 53 Application Recovery Controller routing control. This is used when health check type is RECOVERY_CONTROL"
  default = null
}

variable "tags" {
  default = null
}