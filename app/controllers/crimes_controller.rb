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
    permit(:crime_date, :player, :is_player, :crime_type, :crime_level, :suspension, :suspension_date, :suspension_games, :nflteam_id, :url)
  end

end
