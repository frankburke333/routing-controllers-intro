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
    @header = "You wanna contest me?"
    render :contest
  end

  def kitten
  end

  def kittens
  end


  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
    end


end
