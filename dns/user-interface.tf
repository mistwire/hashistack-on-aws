# resource "kubernetes_annotations" "ui_alb_ssl" {
#   api_version = "networking.k8s.io/v1"
#   kind        = "Ingress"
#   metadata {
#     name = "ui"
#     namespace = "ui"
#   }

#   annotations = {
#     "alb.ingress.kubernetes.io/certificate-arn" = aws_acm_certificate.ui_subdomain.arn
#     "alb.ingress.kubernetes.io/ssl-redirect" = "443"
#   }
#   # These annotations will be applied to the Pods created by the Deployment
#   # template_annotations = {
#   #   "alb.ingress.kubernetes.io/certificate-arn" = aws_acm_certificate.ui_subdomain.arn
#   # }
# }