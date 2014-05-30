class ColophonController < ApplicationController
  def colophon
    @title = "#{self.controller_name.capitalize} - #{app_title}"
  end
end
