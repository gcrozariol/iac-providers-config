variable "origin_id" {
  type        = string
  description = "S3 ID"
}

variable "bucket_domain_name" {
  type        = string
  description = "S3 Domain"
}

variable "cdn_price_class" {
  type        = string
  description = "CDN Price Class"
  default     = "PriceClass_200"
}

variable "cdn_tags" {
  type        = map(string)
  description = "CDN Tags"
  default     = {}
}