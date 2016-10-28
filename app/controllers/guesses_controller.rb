class  GuessesController < ApplicationController

  def index

    #  Parameters: {"first_number"=>"1", "second_number"=>"2", "third_number"=>"3"}

    @first_number = params["first_number"]
    @second_number = params["second_number"]
    @third_number = params["third_number"]

    if @first_number < @second_number && @second_number < @third_number
      @response = "Yes!"
    else
      @response = "No."

      render("guesses/index.html.erb")
    end
  end


  def answer
    # Parameters: {"rule"=>"TESTING"}

    @user_answer = params["rule"]

  end
end
