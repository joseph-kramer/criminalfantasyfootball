class Crime < ApplicationRecord
  belongs_to :nflteam
  has_many :elements, dependent: :destroy
  has_many :characteristics, through: :elements

  def total_points
    characteristic_points + suspension_points
  end

  def characteristic_points
    characteristics.sum(&:points)
  end

  def suspension_points
    suspension_games
  end

  def absolute_date
    if crime_date != nil
      crime_date
    else
      suspension_date
    end
  end

end
