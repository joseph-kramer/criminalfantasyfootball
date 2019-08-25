class Wkpick < ApplicationRecord
  belongs_to :team
  belongs_to :nflteam

  validate :check_change_past_week
  validate :check_not_pick

  def check_change_past_week
    errors.add(:changed,"You cannot pick the same weekly team twice in a row") if
    team.wkpicks.find_by(week: week-1) != nil && nflteam == team.wkpicks.find_by(week: week-1).nflteam
  end

  def check_not_pick
    errors.add(:newpick,"You cannot pick the same weekly team as one of your 3 original teams") if
    team.teams_picked.any? {|x| x==nflteam}
  end

  #def nfl_week
  #  Schedule.find_by(week: week)
  #end

  def weekly_points
    weekly_crime_points + weekly_suspension_points
  end

  def weekly_crime_points
    nflteam.crimes.find_all { |c| c.crime_week==week }.sum(&:characteristic_points)
  end

  def weekly_suspension_points
    nflteam.crimes.find_all { |c| c.suspension_week==week }.sum(&:suspension_points)
  end

end
