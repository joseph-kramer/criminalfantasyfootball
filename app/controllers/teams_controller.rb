class TeamsController < ApplicationController

  def index
    @teams = Team.all.sort_by(&:total_points).reverse
  end

  def show
    @team = Team.find(params[:id])
    @quest = Quest.find(@team.quests.first.id)
  end

  def edit
    @team = Team.find(params[:id])
    @quest = Quest.find(@team.quests.first.id)
    @nflteams = Nflteam.all
    @next_week = next_week

    #@team.wkpicks.build
  end

  def update
    @team = Team.find(params[:id])
    @quest = Quest.find(@team.quests.first.id)
    @nflteams = Nflteam.all
    @next_week = next_week
    if @team.update(team_params)
      redirect_to teams_path, notice: "Team successfully updated!"
    else
      render :edit
    end
  end

  def new
    @team = Team.new
    @nflteams = Nflteam.all
    @quests = Quest.all
    @team.missions.build
    @team.picks.build
    @team.picks.build
    @team.picks.build

    if (params[:quest_id] == nil)
      @x = Quest.find(1)
    else
      @x = Quest.find(params[:quest_id])
    end

    respond_to do |format|
      format.html #{ render action: 'new' } #new.html.erb
      format.json
      format.js #{render 'new'}
      #render :new
    end
  end

  def create
    @nflteams = Nflteam.all
    @quests = Quest.all
    @team = Team.new(team_params)
    @team.user = current_user
    @team.season = current_season
    if @team.save
      redirect_to teams_path, notice: "Team successfully created!"
    else
      render :new
    end
  end

  private

#covid
    def team_params
      params.require(:team).
      permit(:name, :description, :doomsday, missions_attributes: [:id, :quest_id], picks_attributes: [:id, :nflteam_id], wkpicks_attributes: [:id, :week, :nflteam_id])
    end

end
