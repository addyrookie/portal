class Tag < ActiveRecord::Base
  has_many :apptags , :foreign_key => "tag_id" ,
  		      :dependent => :destroy 
end
