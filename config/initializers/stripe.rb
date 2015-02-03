Rails.configuration.stripe = {
  :publishable_key => "pk_test_FHDBuQauRtTStekEioa0kRh8",
  :secret_key      => "sk_test_ikD0A9DR8ZpKGU3FmRHXc2QP"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]