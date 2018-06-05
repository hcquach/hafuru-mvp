class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gratitudes, dependent: :destroy

  # Validations
  validates :email, presence: true, uniqueness: true

  # Upload photo
  mount_uploader :photo, PhotoUploader

end
