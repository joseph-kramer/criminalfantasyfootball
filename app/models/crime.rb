class Crime < ApplicationRecord
  belongs_to :nflteam, required: true
  has_many :elements, dependent: :destroy
  has_many :characteristics, through: :elements

  validates :nflteam, presence: true
  #validates :date_reported, presence: true

  def self.covid_hash_crime_week
    crimearray = Crime.all.find_all {|c| c.is_covid == true && c.is_player == true}
    crimehash = {}
    x = 0
    while x <= (crimearray.max {|a,b| a.crime_week <=> b.crime_week }.crime_week) do
     crimehash[x] = crimearray.find_all {|c| c.crime_week == x}.count
     x+=1
    end
    crimehash
  end

  def total_points
    characteristic_points + suspension_points
  end

  def characteristic_points
    characteristics.sum(&:points)
  end

  def suspension_points
    suspension_games
  end

  def crime_week
    @schedule = Schedule.all
    if date_reported != nil
      x = @schedule.find {|s| date_reported >= s.start_date && date_reported < s.end_date}
      end
    if x !=nil
      x.week
    else
      20
    end
  end

  def suspension_week
    @schedule = Schedule.all
    if suspension_date != nil
      x = @schedule.find {|s| suspension_date >= s.start_date && suspension_date < s.end_date}
      end
    if x !=nil
      x.week
    else
      20
    end
  end

  def absolute_date
    if crime_date != nil
      crime_date
    else
      suspension_date
    end
  end

  def is_covid
    if characteristics.exists? Characteristic.find_by(name: "Covid Case").id
      true
    else
      false
    end
  end

end
