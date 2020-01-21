class MessagesController < ApplicationController
	def create
    @room = Room.find(params[:room_id])
    @message = Message.new(message_params)
    if guide_signed_in?
      @is_guide = true
    elsif tourist_signed_in?
      @is_guide = false
    end
    @message.room_id = @room.id
    if @message.save
      redirect_to room_path(@room)
    else
      redirect_to room_path(@room)
    end
  end

  private
  def message_params
    params.require(:message).permit(:body)
  end
end

