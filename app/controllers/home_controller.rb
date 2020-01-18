class HomeController < ApplicationController
  def top
  	@guides = Guide.order("random()").limit(4)
  end

  def about
  end
end
