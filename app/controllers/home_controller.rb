class HomeController < ApplicationController
before_filter :authenticate_user!
  def index
  
  @user = User.find(:all)
	#@user = User.current_user
  
	@classaccordeon="index"

  end

end

