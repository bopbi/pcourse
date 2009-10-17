# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_qkids_session',
  :secret      => '93e48bbc9e1c3c593d8455fb8655240741fdca09a32c22d646b5823e96e592a3efae0fbf0fa2a9925a2200861e6fd854784a7adcd72f1de11a0216db773a5371'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
