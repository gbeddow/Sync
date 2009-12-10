# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_prototype_session',
  :secret      => '4dd524c9961e54a449c862d72eb0b504b72412526589055a60abf5ae0eeccda588a259a066fb269c33fc18866f32a056bb82e94f8d4430ab6c3dda2d1859088f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
