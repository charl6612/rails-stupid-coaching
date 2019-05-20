# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # TODO: return coach answer to your_message
    @your_message = params["question"]
    if @your_message.include? "?"
      @answer = "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif @your_message == "I AM GOING TO WORK RIGHT NOW!" || @your_message == "I am going to work"
      @answer = "GREAT"
    else
      @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    end
  
  end
end