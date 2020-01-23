class RoomsController < ApplicationController
  def index
  	if guide_signed_in?
      @rooms = current_guide.rooms.all
    elsif tourist_signed_in?
      @rooms = current_tourist.rooms.all
    end
  end

  def show
  	  @room = Room.find(params[:id])
  	  @message = Message.new
      @messages = @room.messages.all
    if guide_signed_in?
      if @room.guide.id == current_guide.id
        @tourist = @room.tourist
      else
        redirect_to root_path
      end
    elsif tourist_signed_in?
      if @room.tourist.id == current_tourist.id
        @guide = @room.guide
      else
        redirect_to root_path
      end

    else
      redirect_to root_path
    end
  end


  def create
  	if guide_signed_in?
  		@room = Room.new(room_tourist_params)
      @room.guide_id = current_guide.id
      @room.save
      redirect_to :action => "show", :id => @room.id
  	elsif tourist_signed_in?
      @room = Room.new(room_guide_params)
      @room.tourist_id = current_tourist.id
      @room.save
      redirect_to :action => "show", :id => @room.id
    end
  end


  private

  def room_tourist_params
    params.require(:room).permit(:tourist_id)
  end

  def room_guide_params
    params.require(:room).permit(:guide_id)
  end
end