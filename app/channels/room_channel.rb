class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    # 接続された時
    stream_from "room_channel_#{params['room']}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    # 切断された時
  end

  def speak(data)
    if params[:guide_id].to_i > 0
        Message.create! body: data['message'], is_guide: true, room_id: params['room']
    else
        Message.create! body: data['message'], is_guide: false, room_id: params['room']
    end
  end
end