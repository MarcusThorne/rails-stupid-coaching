class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @words = params[:quiz]
    if params[:quiz] == "I am going to work!"
      @answer = "Great"
    elsif params[:quiz].include?('?')
      @answer = "Silly question, gets dressed and go to work"
    else
      @answer = "I don't care get dressed and go to work"
    end
  end
end
