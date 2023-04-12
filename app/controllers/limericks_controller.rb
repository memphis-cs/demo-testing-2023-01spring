class LimericksController < ApplicationController

  def index
    @limericks = Limerick.all
    render :index
  end

end
