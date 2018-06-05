class GratitudesController < ApplicationController
  before_action :set_gratitude, only: [:show, :edit, :update, :destroy]
  authorize @gratitude


  def index
    @gratitudes = Gratitude.where(user: current_user)
  end

  def new
    @gratitude = Gratitude.new
  end

  def create
    @gratitude = Gratitude.new(gratitude_params)
    if @gratitude.save
      redirect_to gratitude_path(@gratitude)
    else
      flash[:alert] = "Please try again"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @gratitude.update(gratitude_params)
      redirect_to gratitude_path(@gratitude)
    else
      render :edit
    end
  end

  def destroy
    if @gratitude.user == current_user
      @gratitude.destroy
      redirect_to gratitudes_path
    end
  end

  private

  def set_gratitude
    @gratitude = Gratitude.find(params[:id])
  end

  def gratitude_params
    params.require(:gratitude).permit(:title, :photo, :description, :category_id, :user_id, :collaboration_id)
  end
end
