class CollaborationsController < ApplicationController
  before_action :set_collaboration, only: [:new, :destroy]
  authorize @collaboration

  def new
  end

  def create
  end

  def destroy
    if @collaboration.user == current_user
      @collaboration.destroy
    end
  end

  private

  def set_collaboration
    @collaboration = Collaboration.find(params[:id])
  end

  def collaboration_params
    params.require(:collaboration).permit(:status, :match_id)
  end
end
