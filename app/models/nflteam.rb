class Nflteam < ApplicationRecord
  has_many :crimes, dependent: :destroy
  has_many :picks, dependent: :destroy
  has_many :wkpicks, dependent: :destroy
  has_many :teams_picked_by, through: :picks, source: :team

  def total_points
    crimes.sum(&:points)
  end

  def total_suspension_games
    crimes.sum(&:suspension_games)
  end

  def has_drug_crime
    crimes.any? do |c|
      c.characteristics.exists? Characteristic.find_by(name: "Drugs (non-PED)").id
    end
  end

  def get_criminals
    crimes.pluck(:player)
  end

end
