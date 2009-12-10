class <%= class_name %>Mailer < ActionMailer::Base
  def signup_notification(<%= file_name %>)
    setup_email(<%= file_name %>)
    @subject    += 'Please activate your new account'
  <% if options[:include_activation] %>
    @body[:url]  = "http://www.prototype.gbeddow.com/activate/#{<%= file_name %>.activation_code}"
  <% else %>
    @body[:url]  = "http://www.prototype.gbeddow.com/login/" <% end %>
  end
  
  def activation(<%= file_name %>)
    setup_email(<%= file_name %>)
    @subject    += 'Your account has been activated!'
    @body[:url]  = "http://www.prototype.gbeddow.com/"
  end
  
  protected
    def setup_email(<%= file_name %>)
      @recipients  = "#{<%= file_name %>.email}"
      @from        = "ADMINEMAIL"
      @subject     = "[www.prototype.gbeddow.com] "
      @sent_on     = Time.now
      @body[:<%= file_name %>] = <%= file_name %>
    end
end
