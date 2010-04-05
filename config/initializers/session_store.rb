# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_todayiwill_session',
  :secret      => 'b46f58f3d1406034e9040184b5335672a9d3be774afcc63fe170e08f65e3101c27f5b37efbcb16ffe2a8aea77e11e317c6858ed0383e0145c694118f81b87673'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
