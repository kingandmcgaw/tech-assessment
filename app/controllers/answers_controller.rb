class AnswersController < ApplicationController
  before_action :set_question

  def create
    @answer = Answer.create! text: params[:answer][:text], question: @question, user: @current_user
  end

  private

  def set_question
    @question = Question.find(params[:question_id])
  end
end
