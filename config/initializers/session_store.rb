# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_beckanos-rails_session',
  :secret      => '4232ab3bef65bccd7f7d32340beeb77c0ce467a79fe28eed4085cdcf6ef2931aaf006b0c27d1a6d04f7352d9e1c94d08a07563867afbc14b98bc71aa284ff2a9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
