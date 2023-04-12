class UserLimericksController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = User.find(params[:user_id])
    @limericks = @user.limericks
    render :index
  end

end
