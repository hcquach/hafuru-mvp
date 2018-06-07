class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @gratitude = Gratitude.new
  end

end
