class LimericksController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  before_action :require_permission, except: [:index, :new, :create]

  def index
    @limericks = Limerick.all.reverse_order
    render :index
  end

  def new
    @limerick = Limerick.new
    render :new
  end

  def create
    @limerick = current_user.limericks.build(params.require(:limerick).permit(:title, :limerick_text))
    if @limerick.save
      flash[:success] = "Limerick saved successfully"
      redirect_to root_url
    else
      flash.now[:error] = "Limerick could not be saved"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @limerick = Limerick.find(params[:id])
    render :edit
  end

  def update
    @limerick = current_user.limericks.find(params[:id])
    if @limerick.update(params.require(:limerick).permit(:title, :limerick_text))
      flash[:success] = "Limerick updated successfully"
      redirect_to root_url
    else
      flash.now[:error] = "Limerick could not be updated"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @limerick = current_user.limericks.find(params[:id])
    @limerick.destroy
    flash[:success] = "Limerick deleted successfully"
    redirect_to root_url
  end

  private

  def require_permission
    if Limerick.find(params[:id]).author != current_user
      flash[:error] = 'You do not have permission to do that.'
      redirect_to root_path
    end
  end

end
