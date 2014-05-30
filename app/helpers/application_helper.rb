module ApplicationHelper
  def app_title 
    Rails.application.class.parent.to_s.underscore.titleize
  end
end
