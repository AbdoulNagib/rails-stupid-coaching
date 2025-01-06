class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # I would like to capture the question of the user
    # Then use flow through an if/else statement and give tailored responses
    # Based on the users input/question
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
