class QuestionsController < ApplicationController
  def ask
    @questions = params[:question]
  end
  def answer
    @answers = ["Great !", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if (params[:question]).include?('?')
      @answer = @answers[1]
    elsif (params[:question]).upcase == 'I AM GOING TO WORK'
      @answer = @answers[0]
    else
      @answer = @answers[2]
    end
    @answer
  end
end
