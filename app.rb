require "sinatra"
require "sinatra/reloader"

get("/") do
  
  @title = "Welcome to the Form Dice Roller!"
  erb :main
  
end

get("/process_roll") do

  @rolls = []

  @count_dice = params.fetch("dice").to_i
  @side_dice = params.fetch("sides").to_i

  @count_dice.times do
    die = rand(1..@side_dice)

    @rolls.push(die)
  end

  erb(:flexible)

end
