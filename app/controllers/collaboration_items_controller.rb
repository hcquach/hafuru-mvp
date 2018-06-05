class CollaborationItemsController < ApplicationController
  before_action :set_collaboration_item, only: [:show, :edit, :update, :destroy]


  def index
    @collaboration_items = Gratitude_item.where(user: current_user)
  end

  def new
    @collaboration_item = Collaboration_item.new
  end

  def create
    @collaboration_item = Collaboration_item.new(collaboration_item_params)
    if @collaboration_item.save
      redirect_to collaboration_item_path(@collaboration_item)
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
    if @collaboration_item.update(collaboration_item_params)
      redirect_to collaboration_item_path(@collaboration_item)
    else
      render :edit
    end
  end

  def destroy
    if @collaboration_item.user == current_user
      @collaboration_item.destroy
      redirect_to collaboration_items_path
    end
  end

  private

  def set_gratitude
    @collaboration_item = Collaboration_item.find(params[:id])
  end

  def gratitude_params
    params.require(:collaboration_item).permit(:collaboration_id, :matched_user_gratitude_id, :matching_user_gratitude_id)
  end
end
