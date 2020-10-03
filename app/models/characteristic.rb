class Characteristic < ApplicationRecord
  has_many :elements, dependent: :destroy
  has_many :crimes, through: :elements

  def display_name
    if (points == 1)
      return "#{name} (+#{points} point)"
    end
    if points >= 0
      return "#{name} (+#{points} points)"
    end
    if points < 0
      return "#{name} (#{points} points)"
    end
  end

end
