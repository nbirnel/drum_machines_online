class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  include ApplicationHelper

  def index
    # eg "Recipes - Bake Helper"
    @title = "#{self.controller_name.underscore.titleize} - #{app_title}"
  end

  def show
    # eg @recipe
    item = eval "@#{self.controller_name.singularize}"
    # eg "White Bread - Bake Helper"
    @title = "#{item.name} - #{app_title}"
  end

  def new
    # eg "New Recipe - Bake Helper"
    @title = "New #{self.controller_name.underscore.titleize.singularize} - #{app_title}"
  end

  def edit
    # eg @recipe
    item = eval "@#{self.controller_name.singularize}"
    # eg "Edit White Bread - Bake Helper"
    @title = "Edit #{item.name} - #{app_title}"
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name]
  end

end
