class Wkpick < ApplicationRecord
  belongs_to :team
  belongs_to :nflteam

  validate :wkpick_change

  def wkpick_change
          errors.add(:changed,"You cannot pick the same weekly team twice in a row") if
          team.wkpicks.find_by(week: week-1) != nil && nflteam == team.wkpicks.find_by(week: week-1).nflteam
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
