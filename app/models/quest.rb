class Quest < ApplicationRecord
  has_many :teams, through: :missions

end
