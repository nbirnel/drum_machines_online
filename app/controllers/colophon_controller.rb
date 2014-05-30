class ColophonController < ApplicationController
  def colophon
    @title = "#{self.controller_name.underscore.titleize} - #{app_title}"
  end
end
