class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  after_create_commit { broadcast_append_to "answers" }

  validates :text, presence: true
end
