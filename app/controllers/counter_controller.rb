class CounterController < ApplicationController
  def index
    # Initialize counter to 0 if it's not already set in session
    session[:counter] ||= 0
  end

  def increment
    # Increase the counter by 1
    session[:counter] += 1
    redirect_to action: 'index'
  end

  def decrement
    # Decrease the counter by 1, ensuring it doesn’t go below 0
    session[:counter] -= 1 
    redirect_to action: 'index'
  end

  def reset
    # Reset the counter to 0
    session[:counter] = 0
    redirect_to action: 'index'
  end
end
