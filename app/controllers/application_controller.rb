# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  # gbeddow - http://usefulfor.com/ruby/2008/06/06/restful_authentication-howto-step-by-step-part-2/
  include AuthenticatedSystem

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
