class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_contributor
    if session[:contributor_id]
      @current ||= Contributor.find(session[:contributor_id])
    end
  end
  helper_method :current_contributor
end
