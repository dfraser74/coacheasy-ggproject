class Program < ActiveRecord::Base
   
  belongs_to :coach
  has_one :comment
  has_one :comment1
  has_one :comment2
  has_one :comment3
  has_one :comment4
  has_one :comment5
  has_one :comment6
  
  validates_presence_of :title
  
  attr_accessible :title, :program_id, :coach_id, :cweekstart, :cweekcomments, :cday1, :cday1zone, :cday2, :cday2zone, :cday3, :cday3zone, :cday4, :cday4zone, :cday5, :cday5zone, :cday6, :cday6zone, :cday7, :cday7zone
  
  
  
end
