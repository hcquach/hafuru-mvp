class CollaborationsController < ApplicationController
  before_action :set_collaboration, only: [:new, :show, :destroy]

  def index
    @matching_collaborations = policy_scope(current_user.matching_collaborations).order(created_at: :desc)
    @matched_collaborations = policy_scope(current_user.matched_collaborations).order(created_at: :desc)
  end

  def show
    authorize @collaboration
    @gratitude = Gratitude.new
  end

  def new
  end

  def create
  end

  def destroy
    authorize @collaboration
    if @collaboration.match.matching_gratitude.user == current_user || @collaboration.match.matched_gratitude.user == current_user
      @collaboration.destroy
      redirect_to gratitudes_path
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
