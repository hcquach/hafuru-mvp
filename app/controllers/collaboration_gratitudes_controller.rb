class CollaborationGratitudesController < ApplicationController
  before_action :set_gratitude, only: [:update]

  def create
    @gratitude = Gratitude.new(gratitude_params)
    @collaboration_item = CollaborationItem.find(params[:collaboration_item_id])
    @collaboration = @collaboration_item.collaboration
    @gratitude.collaboration_id = @collaboration.id
    @gratitude.user = current_user
    if @gratitude.save
      if current_user == @collaboration.match.matching_gratitude.user
        @collaboration_item.matching_user_gratitude_id = @gratitude.id
      else
        @collaboration_item.matched_user_gratitude_id = @gratitude.id
      end
      @collaboration_item.save
      redirect_to collaboration_path(@collaboration)
    else
      flash[:alert] = "try again"
    end
    authorize @gratitude
  end

  def update
    if @gratitude.update(gratitude_params)
      redirect_to gratitude_path(@gratitude)
    else
      render :edit
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