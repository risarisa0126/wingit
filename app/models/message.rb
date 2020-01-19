class Message < ApplicationRecord
  belongs_to :room
  after_create_commit { MessageBroadcastJob.perform_later self }
end
