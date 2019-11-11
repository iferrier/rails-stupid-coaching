class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_answer = params[:question]
    if @user_answer.downcase == 'i am going to work right now!'
      @coach_answer = ''
    elsif @user_answer.end_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
