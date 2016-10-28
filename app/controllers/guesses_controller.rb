class  GuessesController < ApplicationController

  def index
    #  Parameters: {"first_number"=>"1", "second_number"=>"2", "third_number"=>"3"}
    g = Guess.new
    g.first_num = params["first_number"]
    g.second_num = params["second_number"]
    g.third_num = params["third_number"]
    if g.first_num != nil
      g.save
    else

    end

    @list = Guess.all

    render("guesses/index.html.erb")
  end


  def answer
    # Parameters: {"rule"=>"TESTING"}

    @user_answer = params["rule"]

  end
end
