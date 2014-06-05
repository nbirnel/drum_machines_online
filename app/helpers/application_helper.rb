module ApplicationHelper
  def app_title 
    Rails.application.class.parent.to_s.underscore.titleize
  end

  def devise_links
    if current_user #user_signed_in?
      link_to 'Log Out', destroy_user_session_path, method: :delete
    else
      link_to 'Log In', new_user_session_path
    end
  end

end
