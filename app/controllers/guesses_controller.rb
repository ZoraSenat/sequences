class  GuessesController < ApplicationController

  def index
    #  Parameters: {"first_number"=>"1", "second_number"=>"2", "third_number"=>"3"}
    g = Guess.new
    g.first_num = params["first_number"]
    g.second_num = params["second_number"]
    g.third_num = params["third_number"]
    g.save

    @list = Guess.all
    # store numbers in db
    #
    # if @first_number.to_i < @second_number.to_i && @second_number.to_i < @third_number.to_i
    #   @response = "Yes!"
    # else
    #   @response = "No."

  render("guesses/index.html.erb")
end


def answer
  # Parameters: {"rule"=>"TESTING"}

  @user_answer = params["rule"]

end
end
