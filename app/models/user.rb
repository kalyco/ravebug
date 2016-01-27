class User < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	belongs_to :crew

	has_many :events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
