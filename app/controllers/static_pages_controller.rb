class StaticPagesController < ApplicationController
  def home
  	@time = Time.new.strftime("%A %B %d")
  end
end
