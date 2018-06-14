class Collaboration < ApplicationRecord
  belongs_to :match, dependent: :destroy
  belongs_to :chat_room
  delegate :turn_off_match_status, :matched_gratitude, :matching_gratitude, to: :match

  has_many :collaboration_items, dependent: :destroy
  has_many :gratitudes, dependent: :destroy
  before_validation :configure_chat_room
  before_destroy :turn_off_match_status
  after_create :set_collaboration_id_to_gratitudes

  def configure_chat_room
    puts "------------------------------ configure_chat_room"
    unless self.chat_room
      self.chat_room = ChatRoom.create!(name: "ChatRoom: #{matching_gratitude.user.username}/#{matched_gratitude.user.username}")
    end
  end

  def set_collaboration_id_to_gratitudes
    matched_gratitude.collaboration = self
    matched_gratitude.save
    matching_gratitude.collaboration = self
    matching_gratitude.save
  end

end
