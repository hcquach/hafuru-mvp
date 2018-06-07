class CollaborationsController < ApplicationController
  before_action :set_collaboration, only: [:new, :show, :destroy]

  def index
    @collaborations = policy_scope(Collaboration).order(created_at: :desc)
  end

  def show
    authorize @collaboration
  end

  def new
  end

  def create
    @collaboration = Collaboration.new
    @collaboration.match = Match.find(params[:match_id])
    @collaboration.save
    redirect_to collaboration_path(@collaboration)
    authorize @collaboration
  end

  def destroy
    @collaboration.destroy
    authorize @collaboration
    redirect_to gratitudes_path
  end

  private

  def set_collaboration
    @collaboration = Collaboration.find(params[:id])
  end

  def collaboration_params
    params.require(:collaboration).permit(:status, :match_id)
  end
end
