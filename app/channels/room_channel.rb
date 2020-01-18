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
    message = Message.new(body: body['body'][0], user_id: body['body'][1].to_i, room_id: body['body'][2].to_i)
    post.save
    ActionCable.server.broadcast "room_channel_#{data['roomid']}", messege: data['messege']
  end
end