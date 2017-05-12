class Travel < ApplicationRecord
	# include Bootsy::Container
	mount_uploader :cover, AvatarUploader
	belongs_to :system_user
	belongs_to :bootsy_image_gallery, optional: true
	validates_presence_of :title, :description, :content, :cover, :system_user_id, :message => "can't be blank"

end
