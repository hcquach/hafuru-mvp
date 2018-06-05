class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :destroy]


  def index
    @matches = policy_scope(Match).order(created_at: :desc)
  end

  def show
    authorize @match
  end

  def new
  end

  def create
  end

  def destroy
    if @match.user == current_user
      @match.destroy
      redirect_to matches_path
    end
  end

  private

  def set_match
    @match = Match.find(params[:id])
  end

  def match_params
    params.require(:macth).permit(:matched_gratitude_id, :matching_gratitude_id)
  end
end