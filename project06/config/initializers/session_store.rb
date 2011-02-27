# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project06_session',
  :secret      => 'a49b1551af76f2e8aad5f40b223dc42fa8c5f4acd75111380c2f653d01a5078b60419c0a58ca7468a2e20d3d8ab7d20a2cf48062216d728d7abbd57a1064afb9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
