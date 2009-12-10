class UserObserver < ActiveRecord::Observer
  def after_create(user)

    # gbeddow - reload user per restful_activation plugin docs
    user.reload

    UserMailer.deliver_signup_notification(user)
  end

  def after_save(user)
  
    # gbeddow - reload user per restful_activation plugin docs
    user.reload

    UserMailer.deliver_activation(user) if user.recently_activated?
  
  end
end
