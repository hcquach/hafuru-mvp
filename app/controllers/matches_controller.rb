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
    @category = Gratitude.find(params[:gratitude_id]).category
    matched_gratitude_pg = Gratitude.joins(:user).where("users.id != ? AND collaboration_id is ? AND match_status = ?", current_user.id, nil, false).global_search(@gratitude.title)

    @match.matching_gratitude = @gratitude
    @match.matched_gratitude = matched_gratitude_pg.first
    sleep(3)
    unless @match.matched_gratitude
      redirect_to gratitudes_path
      flash[:alertmatch] = "Yo"
    else @match.matched_gratitude.category == @category && @match.save
      @match.matched_gratitude.match_status = true
      @match.matched_gratitude.save!
      @match.matching_gratitude.match_status = true
      @match.matching_gratitude.save!
      @match.save!
      MatchMailer.welcome(@match, current_user).deliver_now
      redirect_to match_path(@match)
      flash[:noticematch] = "Yo"
    end
    authorize @match
  end

  def destroy
    authorize @match
    if @match.matching_gratitude.user == current_user || @match.matched_gratitude.user == current_user
      @match.destroy
      redirect_to gratitudes_path
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
