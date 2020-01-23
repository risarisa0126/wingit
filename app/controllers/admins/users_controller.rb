class Admins::UsersController < ApplicationController
	before_action :authenticate_admin!

  def index
  	@guides = Guide.all
  	@tourists = Tourist.all
  end
end
