class Image < ActiveRecord::Base
  # Image model
  # created by tapan
  # created on 04/05/2012
   attr_accessible :name, :isActive

   belong_to :user
   belong_to :gallery
end
