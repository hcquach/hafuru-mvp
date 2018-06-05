class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :destroy]
  authorize @match

  def index
    @matches = Match.where(user: current_user)
  end

  def show
  end

  def new
  end

  def create

    @match = Match.new(match_params)
    # @gratitude = matching_gratitude
    @gratitude = @match.matching_gratitude
    # matching_gratitude.user = current_user
    # @match.matching_gratitude = Gratitude.find(params[:matching_gratitude_id])
    # matching_gratitude_arry = matching_gratitude.split(/\W+/)
    #how to find the matched_gratitude
    # gratitudes_to_match = Gratitude.where.not(user: current_user)
    gratitudes_to_match = Gratitude.where("user != ? AND collaboration_id is ?", current_user, nil)
    matching_category = matching_gratitude.category_id
    gratitudes_to_match.each do |gratitude|
     if gratitude.category_id == matching_category





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





    @match.matched_gratitude = Gratitude.find(params[:matched_gratitude_id])
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
