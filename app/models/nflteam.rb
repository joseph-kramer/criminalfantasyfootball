class Nflteam < ApplicationRecord
  has_many :crimes, inverse_of: :nflteam, dependent: :destroy
  has_many :picks, dependent: :destroy
  has_many :wkpicks, dependent: :destroy
  has_many :teams_picked_by, through: :picks, source: :team

  def total_points
    crimes.sum(&:points)
  end

  def total_suspension_games
    crimes.sum(&:suspension_games)
  end

  #covid
  def covid_total
    covid_count = 0
      crimes.each do |c|
        if (c.characteristics.exists? Characteristic.find_by(name: "Covid Case").id)
          covid_count+=1
        end
      end
    covid_count
  end

  def has_drug_crime
    crimes.any? do |c|
      c.characteristics.exists? Characteristic.find_by(name: "Drugs (non-PED)").id
    end
  end

  def get_criminals
    crimes.pluck(:player)
  end

  def nfl_covid_ranking
    covid_rank = 1
    allteams = Nflteam.all
    allteams.each do |n|
      if (n.covid_total > covid_total)
        covid_rank+=1
      end
    end
    covid_rank
  end


end
