class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(:messages).find(params[:id])
  end
end
