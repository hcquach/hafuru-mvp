class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gratitudes, dependent: :destroy
  has_many :matches, through: :gratitudes
  has_many :messages, dependent: :destroy

  # Validations
  validates :email, presence: true, uniqueness: true

  # Upload photo
  mount_uploader :photo, PhotoUploader

  def self.hafuru
    @user = User.find(1000)
  end

  def matching_collaborations
    Collaboration.where("match_id in (?)", Match.where("matching_gratitude_id in (?)", gratitudes.map(&:id)).select(:id))
  end

  def matched_collaborations
    Collaboration.where("match_id in (?)", Match.where("matched_gratitude_id in (?)", gratitudes.map(&:id)).select(:id))
  end
end
