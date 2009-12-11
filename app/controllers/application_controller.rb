# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  # gbeddow - http://usefulfor.com/ruby/2008/06/06/restful_authentication-howto-step-by-step-part-2/
  include AuthenticatedSystem

  # gbeddow - http://www.buildingwebapps.com/articles/6401-using-ssl-in-rails-applications
  include SslRequirement

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  def ssl_required?
    # (comment this line out if you want to test ssl locally)
    return false if local_request? 

    # (uncomment this line if you want to disable ssl in test mode)
    # return false if RAILS_ENV == 'test'

    # otherwise, use the filters
    super
  end

end
