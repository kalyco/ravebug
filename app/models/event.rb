class Event < ActiveRecord::Base
	mount_uploader :event_image, EventImageUploader
	belongs_to :crew

	has_many :users
	has_one :set_list

	enum invite_level: [:private, :public]
end