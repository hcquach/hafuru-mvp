class ChatRoom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_one :collaboration
end
