class Team < ApplicationRecord
    belongs_to :user
    has_many :picks, inverse_of: :team, dependent: :destroy
    has_many :wkpicks, inverse_of: :team, dependent: :destroy
    has_many :missions, inverse_of: :team, dependent: :destroy
    has_many :teams_picked, through: :picks, source: :nflteam
    has_many :quests, through: :missions
    accepts_nested_attributes_for :missions
    accepts_nested_attributes_for :picks
    accepts_nested_attributes_for :wkpicks

    def total_points
      teams_picked.sum(&:total_points)
    end

    def ranking
      Team.where('total_points > ?', total_points).count + 1
    end

end
