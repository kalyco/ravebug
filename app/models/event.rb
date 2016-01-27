class Event < ActiveRecord::Base
	mount_uploader :event_image, EventImageUploader

	validates_presence_of :title
	validates_presence_of :description
	validates_presence_of :start_time
	validates_presence_of :end_time
	validates_presence_of :event_level

	belongs_to :crew
	has_many :users
	has_one :set_list

	enum event_level: [:private, :public]
end