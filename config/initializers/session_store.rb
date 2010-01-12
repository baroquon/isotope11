# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_isotope11_session',
  :secret      => 'bb47c8b96f91a2cad7c788840fcce9bc025ee3437fd7858220a94be12d2adb181ef437961aef0a69b70dd1f343de9d0b0b971ffa174317306f3eac67e3396fee'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
