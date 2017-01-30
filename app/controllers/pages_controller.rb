class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]


  def welcome
    @header = "This is the Welcome page"
    render :welcome
  end

  def about
    @header = "About how we crush it on the regular"
    render :about
  end


  def contest
    flash[:notice] = "Sorry, the contest is over brah........wooooooah"
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def secrets
    if params[:magic_word] != "frank4237"
      flash[:alert] = "SECRET PASSWORD DOES NOT MATCH"
      redirect_to "/welcome"
    end
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end



end
