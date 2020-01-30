class Message < ApplicationRecord
  belongs_to :room, optional: true
  after_create_commit { MessageBroadcastJob.perform_later self }
end
