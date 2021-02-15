class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # get user iput/params stored in instance @questions
    # find user params to find input and connect them @questions = params
    # do if else statement
    # call the method in answer.html.erb
    @questions = params[:question]
    if @questions == "I am going to work"
      @answer = 'Great'
    elsif @questions.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
