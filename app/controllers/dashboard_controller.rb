class DashboardController < ApplicationController
  
  before_filter :authenticate_coach!
  
  def index
    
  end
  
end
