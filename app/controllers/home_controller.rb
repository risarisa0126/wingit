class HomeController < ApplicationController
  def top
  	@guides = Guide.order("RAND()").limit(6)
  	@tourists = Tourist.order("RAND()").limit(6)
  end

  def about
  end
end
