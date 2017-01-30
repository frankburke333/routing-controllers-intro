class PagesController < ApplicationController

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
end
