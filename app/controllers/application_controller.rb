class ApplicationController < ActionController::Base
  protect_from_forgery
  
  config.paperclip_defaults = {:storage => :fog, :fog_credentials => {:provider => "Local", :local_root => "#{Rails.root}/public"}, :fog_directory => "", :fog_host => "localhost"}
 
 def create
   @coach = Coach.create(params[:coach])
 end
 
end
