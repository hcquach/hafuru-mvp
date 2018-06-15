class Collaboration < ApplicationRecord
  belongs_to :match, dependent: :destroy
  belongs_to :chat_room
  delegate :turn_off_match_status, :matched_gratitude, :matching_gratitude, to: :match

  has_many :collaboration_items, dependent: :destroy
  has_many :gratitudes, dependent: :destroy
  before_validation :configure_chat_room
  before_destroy :turn_off_match_status

  def configure_chat_room
    puts "------------------------------ configure_chat_room"
    unless self.chat_room
      self.chat_room = ChatRoom.create!(name: "ChatRoom: #{matching_gratitude.user.username}/#{matched_gratitude.user.username}")
      Message.create(chat_room: self.chat_room, content: "Welcome to your new collab on ##{matching_gratitude.category.name}!", user: User.hafuru)
      Message.create(chat_room: self.chat_room, content: "Start chatting and expressing gratitude on this common category", user: User.hafuru)
    end
  end

end
