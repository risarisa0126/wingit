class HomeController < ApplicationController
  def top
  	@guides = Guide.order("random()").limit(5)
  	@tourists = Tourist.order("random()").limit(5)
  end

  def about
  end
end
