class QuestionsController < ApplicationController
    def ask
    end

    def answer
        @user_ask = params[:user_ask]
        
        if @user_ask == "I am going to work" 
           @answer_coach = "Great!"
        
        elsif @user_ask.end_with?("?")
           @answer_coach = "Silly question, get dressed and go to work!"
        else 
           @answer_coach = "I don't care, get dressed and go to work!"
        end
    end
end
 