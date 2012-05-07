require 'paperclip' 
class Image < ActiveRecord::Base
  # Image model
  # created by tapan
  # created on 04/05/2012
   attr_accessible :name, :isActive

   belongs_to :user
   belongs_to :gallery
   has_attached_file :upload,
                    :url => "/images/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/images/:id/:style/:basename.:extension",
                    :styles => {
                      :thumb => "75x75>",
                      :small => "200x200>"
                    }
  #add in any validations you may want
end



