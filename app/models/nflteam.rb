class Nflteam < ApplicationRecord
  has_many :crimes, dependent: :destroy
  has_many :picks, dependent: :destroy
  has_many :wkpicks, dependent: :destroy
  has_many :teams_picked_by, through: :picks, source: :team

  def total_points
    crimes.sum(&:points)
  end
end
