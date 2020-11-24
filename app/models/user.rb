class User < ApplicationRecord
  include AvatarUploader::Attachment(:avatar)

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  has_many :articles, dependent: :destroy

  validates :full_name, presence: true
end
