class Characteristic < ApplicationRecord
  has_many :elements, dependent: :destroy
  has_many :crimes, through: :elements

  def display_name
    "#{name} (+#{points} points)"
  end

end
