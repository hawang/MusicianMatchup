# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_MusicianMatchup_session',
  :secret      => '05f495ef3a1c8fcbd899ef41c5efb361abb37bfc0b0a400c7ce06ca96c83ed85daf3d2194785424ad31fbec5a4fe0d0b470bdf80fb28308b50b81a9cad923181'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
