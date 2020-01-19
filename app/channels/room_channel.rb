class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    # 接続された時
    stream_from "room_channel_#{params['roomid']}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    # 切断された時
  end

  def speak(data)
    Message.create! message: data['message'], is_guide: current_guide.id, room_id: params['room']
  end
end