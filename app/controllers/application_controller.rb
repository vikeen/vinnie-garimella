class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery

  # give the ability to find a sessioned user across the application
  #def current_user
  #  @current_user ||= User.find(session[:user_id]) if session[:user_id]
  #end
end
