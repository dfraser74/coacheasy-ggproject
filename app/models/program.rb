class Program < ActiveRecord::Base
   
  belongs_to :coach
  
  validates_presence_of :title
  attr_accessible :body, :title, :coach_id
  
  
  
end
