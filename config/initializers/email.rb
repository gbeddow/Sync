# Load mail configuration
email_settings = YAML::load(File.open("#{RAILS_ROOT}/config/email.yml"))
ActionMailer::Base.smtp_settings = email_settings[RAILS_ENV] unless email_settings[RAILS_ENV].nil?
