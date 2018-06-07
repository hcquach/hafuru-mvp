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
    @match = Match.new
    @gratitude = Gratitude.find(params[:gratitude_id])
    gratitudes_to_match = Gratitude.joins(:user).where("users.id != ? AND collaboration_id is ? AND match_status = ?", current_user.id, nil, false)
    matched_gratitude = gratitudes_to_match.find do |gratitude|
      gratitude.category_id == @gratitude.category_id
    end
    @match.matching_gratitude = @gratitude
    @match.matched_gratitude = matched_gratitude
    if @match.save
      matched_gratitude.match_status = true
      matched_gratitude.save
      @gratitude.match_status = true
      @gratitude.save
      redirect_to match_path(@match)
    else
      redirect_to gratitudes_path
      flash[:alert] = "No Match, try another Gratitude"
    end
    authorize @match
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
    params.require(:match).permit(:matched_gratitude_id, :matching_gratitude_id)
  end
end
