class Program < ActiveRecord::Base
   
  validates_presence_of :title
  attr_accessible :body, :title
end
