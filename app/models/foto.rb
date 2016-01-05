class Foto < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :image, default_url:"https://www.google.com.ng/imgres?imgurl=http://www.brentwoodgazette.co.uk/images/newspaperV2/modules/read-more/mostread-default.jpg&imgrefurl=http://www.brentwoodgazette.co.uk/Concern-growing-missing-12-year-old-girl-West/story-28430335-detail/story.html&h=137&w=200&tbnid=v_mYRG885vCvcM:&docid=mriUGAz1v7686M&ei=3wGMVoawH8Gyae6UgFA&tbm=isch&ved=0ahUKEwjGm9O8nZPKAhVBWRoKHW4KAAoQMwg9KBgwGA" #, styles: { medium: "200x200>", thumb: "50x50>"}#
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
