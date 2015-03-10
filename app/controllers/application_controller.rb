class ApplicationController < ActionController::Base
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :on_before_action


  def on_before_action
    puts "#{params[:action]} called on #{params[:controller]} controller"
  end


  def after_sign_in_path_for resource
    welcome_path
  end


  def after_sign_out_path_for resource
    root_path
  end

end
