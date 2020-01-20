class Admins::UsersController < ApplicationController
	before_action :authenticate_admin!

  def index
  	@guides = Guides.all
  	@tourists = Tourists.all
  end
end
