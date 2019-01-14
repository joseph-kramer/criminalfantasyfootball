class NflteamsController < ApplicationController
  def index
    @nflteams = Nflteam.all.sort_by(&:total_points).reverse
  end

  def show
    @nflteam = Nflteam.find(params[:id])
    @crimes = Nflteam.find(params[:id]).crimes
  end
end
