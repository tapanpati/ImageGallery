class Gallery < ActiveRecord::Base
  # Gallery model
  # created by tapan
  # created on 04/05/2012
  attr_accessible :name

   has_many :images
end
