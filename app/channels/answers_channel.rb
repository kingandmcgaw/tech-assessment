class AnswersChannel < ApplicationCable::Channel
  def subscribed
    stream_from "AnswersChannel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
