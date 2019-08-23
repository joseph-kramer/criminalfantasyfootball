class Pick < ApplicationRecord
  belongs_to :team
  belongs_to :nflteam

validates :nflteam, uniqueness: {scope: :team,
message: "You cannot pick the same team twice"}

end
