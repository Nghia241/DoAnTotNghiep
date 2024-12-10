Devise.setup do |config|
  # Mailer configuration
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  # ORM configuration
  require 'devise/orm/active_record'

  # Case-insensitive keys
  config.case_insensitive_keys = [:email]

  # Strip whitespace from email
  config.strip_whitespace_keys = [:email]

  # Skip session storage for certain strategies
  config.skip_session_storage = [:http_auth]

  # Password length
  config.password_length = 6..128

  # Email regex
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  # Sign out method
  config.sign_out_via = :delete
end
