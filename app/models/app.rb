class App < ActiveRecord::Base
  belongs_to :user
  has_many :bugs
  has_many :apptags , :foreign_key => "app_id" ,
  		      :dependent => :destroy 
end
