class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_user
  CoachSession.find
  end
end
