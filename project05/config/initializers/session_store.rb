# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project04_session',
  :secret      => '3a8537cb135d5d06add8c9c63d221958fc6dd228753a3e8b8344bf3e5513fc6d23115256508bdfcf12e63b539e34133fa596da0e1154cbebd41714e5ff5262bc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
