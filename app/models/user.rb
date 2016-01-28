class User < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	validates_presence_of :first_name
	validates_presence_of :last_name

	belongs_to :crew
	has_many :events

	enum status: [ :guest, :admin, :dj ]
end
