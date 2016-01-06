class Foto < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :image #, styles: { medium: "200x200>", thumb: "50x50>"}#
  validates_attachment :image, content_type: { content_type: [ "image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
