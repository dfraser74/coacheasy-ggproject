class HomeController < ApplicationController
  layout 'homelayout'
  
  def index
    if coach_signed_in?
       redirect_to :controller => 'dashboard', :action => 'index'
    end
    
  end
  
  def create
    render :layout => 'homelayout'
  end
end

