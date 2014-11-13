class StaticPagesController < ApplicationController
  layout 'home'

	end
  
  def home
  	@time = Time.new.strftime("%A %B %d")
  end

  def business
  
  end

  def begin
  end

  def cover_letter
    @cover_letter = Cover_letter.new
  end
