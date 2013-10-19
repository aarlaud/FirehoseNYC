class Pic < ActiveRecord::Base
	attr_accessible :hour, :emotion, :learned, :image
  
  # Adding carrierwave uploader
  	mount_uploader :image, ImageUploader
  	
end
