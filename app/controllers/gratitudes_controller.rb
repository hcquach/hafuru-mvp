class GratitudesController < ApplicationController
  before_action :set_gratitude, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :create

  def index
    @gratitudes = policy_scope(Gratitude.where(collaboration_id: nil)).order(created_at: :desc)
  end

  def new
    @gratitude = Gratitude.new
    authorize(@gratitude)
  end

  def create
    @gratitude = Gratitude.new(gratitude_params)
    @gratitude.user = current_or_guest_user
    authorize(@gratitude)

    if @gratitude.category.nil?
      flash[:categoryerror] = "Yo"
      render :new
      return
    elsif @gratitude.photo.blank?
      @gratitude.remote_photo_url = @gratitude.category.photo_url
    end

    if @gratitude.save
      redirect_to gratitude_path(@gratitude)
      flash[:noticegratitude] = "Yo"
    else
      flash[:alertgratitude] = "Yo"
      render :new
    end

  end

  def show
    @gratitudes = policy_scope(Gratitude).order(created_at: :desc)
    authorize(@gratitude)
  end

  def edit
    authorize(@gratitude)
  end

  def update
    authorize(@gratitude)
    same_category = @gratitude.category
    if params[:category_id].nil?
      params[:category_id] = same_category
    end
    if @gratitude.update(gratitude_params)
      flash[:noticeupdategratitude] = "Yo"
      if @gratitude.collaboration_id
        redirect_to collaboration_path(@gratitude.collaboration)
      else
        redirect_to gratitude_path(@gratitude)
      end
    else
      flash[:alertupdategratitude] = "Yo"
      render :edit
    end
  end

  def destroy
    authorize(@gratitude)
    if @gratitude.user == current_user
      @gratitude.destroy
      redirect_to gratitudes_path
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
