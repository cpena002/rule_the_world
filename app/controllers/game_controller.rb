# Create controller named Game. Have it inherit from ApplicationController.
class GameController < ApplicationController

  # Set method
  def try
    # Create random number.
    prng = Random.new
    cookies[:number] = prng.rand(100) unless !cookies[:number].nil?

    # Store random number for duration of game.
    @random = cookies[:number]

    # Store user's guess.
    @guess = params[:guess]

    # Start counter for guess attempts.
    cookies[:count] = 0 unless !cookies[:number].nil?


    # Do this if user guesses random number.
    if @guess == @random
      @result = "You win! You are amazing!"

      # Sets a new random number if user guesses right.
      cookies[:number] = prng.rand(100)

      # Re-sets counter to zero if user guesses right.
      cookies[:count] = 0

      # Do this if user's guess is too high.
    elsif @guess > @random
      @result = "Your guess is too high! You're overcompensating!"

      # Adds one to count if user guesses too high.
      cookies[:count] = cookies[:count].to_i + 1

      # Stores new value of count.
      @count = cookies[:count]

      # Do this if user's guess is too low.
    else
      @result = "Your guess is too low! Give up already"

      # Adds one to count if user guesses too low.
      cookies[:count] = cookies[:count].to_i + 1

      # Stores new value of count.
      @count = cookies[:count]
    end

  end
  
end
