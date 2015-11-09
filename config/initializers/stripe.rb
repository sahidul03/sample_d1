Rails.configuration.stripe = {
    :publishable_key => 'pk_test_SZALryK25uKP4nBjYXpilPsd',
    :secret_key      => 'sk_test_3thGJMiZWrN1FDfqrkAPUhVM'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]