Rails.configuration.stripe = {
  :publishable_key => "pk_live_OGwxihvaqMHuqS1TJXfZlQXN",
  :secret_key      => "sk_live_A649jIwrtHjVNMurBGq9dVk3"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]