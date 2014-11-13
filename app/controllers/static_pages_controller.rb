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
