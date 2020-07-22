class Image < ApplicationRecord
	mount_uploader :picture, PictureUploader

	validates :description, :name, presence: true
# Relación de muchos imagenes a 1 user
	belongs_to :user
end
