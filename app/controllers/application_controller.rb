class ApplicationController < ActionController::Base
  before_action :fetch_user
  # this will be actioned on every page/action because they inherit from here
  private
  def fetch_user # TODO test this with both find and by Id in console
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present? # Log out non-existant users
  end

  def check_for_login
    redirect_to login_path unless @current_user.present?
  end
end
