class Crime < ApplicationRecord
  belongs_to :nflteam
  has_many :elements, dependent: :destroy
  has_many :characteristics, through: :elements

  def points
    #characteristics.sum(&:points)
    0
  end

  def absolute_date
    if crime_date != nil
      crime_date
    else
      suspension_date
    end
  end

end
