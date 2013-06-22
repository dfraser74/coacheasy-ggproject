class Comment < ActiveRecord::Base
  
  belongs_to :program
  
  attr_accessible :body, :post_id
end
