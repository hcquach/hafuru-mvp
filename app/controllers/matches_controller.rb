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
    @match = Match.new(match_params)
    @gratitude = Gratitude.find(params[:matching_gratitude_id])
    # @gratitude = @match.matching_gratitude
    # gratitudes_to_match = Gratitude.where("user != ? AND collaboration_id is ? AND match_status is ?", current_user, nil, false)
    gratitudes_to_match = Gratitude.joins(:user).where("users.id != ? AND collaboration_id is ? AND match_status = ?", current_user.id, nil, false)
    # matched_gratitudes = []
    # gratitudes_to_match.each do |gratitude|
    #  if gratitude.category_id == @gratitude.category_id
    #   matched_gratitudes << gratitude
    # end
    matched_gratitude = gratitudes_to_match.find do |gratitude|
      gratitude.category_id == @gratitude.category_id
    end
    # matched_gratitude = matched_gratitudes.take(1)
    @match.matching_gratitude = @gratitude
    @match.matched_gratitude = matched_gratitude
    if @match.save
      # matched_gratitude.is_matched!
      matched_gratitude.match_status = true
      matched_gratitude.save
      @gratitude.match_status = true
      @gratitude.save
      redirect_to gratitude_match_path(@match)

    else
      flash[:notice] "No Match, try another Gratitude"
      redirect_to gratitudes_path
    end


      # matching_gratitude.user = current_user
      # @match.matching_gratitude = Gratitude.find(params[:matching_gratitude_id])
      # matching_gratitude_arry = matching_gratitude.split(/\W+/)
      #how to find the matched_gratitude
      # gratitudes_to_match = Gratitude.where.not(user: current_user)
      # gratitude.title.split(/\W+/).each do |word|
      #   counter = {}
      #   word_count = 0
      #   matching_gratitude_arry.each do |matching|
      #     if matching.downcase == word.downcase
      #       word_count += 1
      #       counter[word] = word_count
      #     else
      #       word.count =0
      #     end
      #   else
      #   @match.matched_gratitude = 0
      # end
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
