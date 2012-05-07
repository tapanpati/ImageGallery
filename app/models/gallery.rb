class Gallery < ActiveRecord::Base
  # Gallery model
  # created by tapan
  # created on 04/05/2012
  attr_accessible :name , :image 
   has_many :images ,:dependent => :destroy
   accepts_nested_attributes_for :images, :allow_destroy => true
end
