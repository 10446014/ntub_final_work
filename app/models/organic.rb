class Organic < ApplicationRecord
  validates :title, presence: true
	belongs_to :owner, class_name: "User", foreign_key: :user_id
#   has_attached_file :image, styles: { :medium => "400x400#" }
# 	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	
	mount_uploader :image, ImageUploader
end
