class HomeController < ApplicationController
  def top
  	@guides = Guide.order("random()").limit(6)
  	@tourists = Tourist.order("random()").limit(6)
  end

  def about
  end
end
