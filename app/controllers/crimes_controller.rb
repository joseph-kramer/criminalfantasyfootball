class CrimesController < ApplicationController
  def index
    #@crimes = Crime.all.order(&:absolute_date)
    @crimes = Crime.all
  end

  def show
    @crime = Crime.find(params[:id])
  end

  def new
    @crime = Crime.new
    @nflteams = Nflteam.all
  end

  def create
    @crime = Crime.new(crime_params)
    @crime.points = @crime.total_points
    if @crime.save
      redirect_to crimes_path, notice: "Crime successfully created!"
    else
      render :new
    end
  end

  def edit
    @crime = Crime.find(params[:id])
    @nflteams = Nflteam.all
  end

  def update
    @crime = Crime.find(params[:id])
    if @crime.update(crime_params)
      @crime.points = @crime.total_points
      @crime.save
      redirect_to crimes_path, notice: "Crime successfully updated!"
    else
      render :edit
    end
  end

  def destroy
     @crime = Crime.find(params[:id])
     @crime.destroy
     redirect_to crimes_path, alert: "Crime successfully deleted!"
   end


private

  def crime_params
    params.require(:crime).
    permit(:points, :date_reported, :crime_date, :player, :is_player, :description, :crime_type, :crime_level, :suspension, :suspension_date, :suspension_games, :nflteam_id, :url, characteristic_ids: [])
  end

end
