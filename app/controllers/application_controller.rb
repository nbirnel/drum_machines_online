class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

def index
  # eg "Recipes - Drum Machines"
  @title = "#{self.controller_name.capitalize} - Drum Machines"
end

def show
  # eg @recipe
  item = eval "@#{self.controller_name.singularize}"
  # eg "White Bread - Drum Machines"
  @title = "#{item.name} - Drum Machines"
end

def new
  # eg "New Recipe - Drum Machines"
  @title = "New #{self.controller_name.singularize.capitalize} - Drum Machines"
end

def edit
  # eg @recipe
  item = eval "@#{self.controller_name.singularize}"
  # eg "Edit White Bread - Drum Machines"
  @title = "Edit #{item.name} - Drum Machines"
end
