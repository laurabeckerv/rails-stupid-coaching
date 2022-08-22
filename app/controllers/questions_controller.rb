class QuestionsController < ApplicationController

  # routes back ask from the view
  def ask
  end

  # routes back answer from the view
  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I dont care, get dressed and go to work!"
    end
  end
end
