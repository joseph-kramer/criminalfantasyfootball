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

    validates :name, presence: true
    validates :description, length: { minimum: 10 }
    validates_associated :picks
    validates_associated :wkpicks
    validate :check_unique_pick
    validates :doomsday, presence: true

    def check_unique_pick
      errors.add(:unique,"You cannot pick the same team twice") if
        picks.map(&:nflteam) != picks.map(&:nflteam).uniq
    end

    def total_points
      crime_points+quest_points+week_points
    end

    def suspension_games
      teams_picked.sum(&:total_suspension_games)
    end

    def crime_points
      teams_picked.sum(&:total_points)
    end

    def quest_points
      if is_quest_complete
        5
      else
        0
      end
    end

    def week_points
      3*wkpicks.sum(&:weekly_points)
    end

    def covid_points
        teams_picked.sum(&:covid_total)
    end

    def covid_ranking
      #Team.where(':covid_points > ?', covid_points).count + 1
    end

    def ranking
      #Team.where(':total_points > ?', total_points).count + 1
    end

    def is_quest_complete
        case quests.first.name
          when "Supporting Role"
              quest_supporting_role
          when "I Shot The Sheriff"
              quest_shot_sheriff
          when "Mulligan"
              quest_mulligan
          when "Can't Stop Won't Stop"
              quest_cant_stop
          when "International Man of Mystery"
              quest_international_man
          when "Riding the Bench"
              quest_riding_bench
          when "Partners in Crime"
              quest_partner_crime
          when "Narcotics"
              quest_narcotics
          when "Sharing is NOT caring"
              quest_sharing
          else
            false
          end
    end

    def quest_supporting_role
      teams_picked.any? do |t|
        t.crimes.any? do |c|
          c.is_player != true
        end
      end
    end

    def quest_shot_sheriff
      teams_picked.any? do |t|
        t.crimes.any? do |c|
          c.characteristics.exists? Characteristic.find_by(name: "Gun").id
        end
      end
    end

    def quest_mulligan
      teams_picked.any? {|t| t.crimes.count == 0}
    end

    def quest_cant_stop
      teams_picked.any? do |t|
        t.get_criminals != t.get_criminals.uniq
      end
    end

    def quest_international_man
      teams_picked.any? do |t|
        t.crimes.any? do |c|
          c.characteristics.exists? Characteristic.find_by(name: "Outside USA").id
        end
      end
    end

    def quest_riding_bench
      teams_picked.sum(&:total_suspension_games) > 15
    end

    def quest_partner_crime
      teams_picked.any? do |t|
        t.crimes.any? do |c|
          c.characteristics.exists? Characteristic.find_by(name: "Teammate Involved").id
        end
      end
    end

    def quest_narcotics
      teams_picked.find_all { |t| t.has_drug_crime == true }.count > 2
    end

    def quest_sharing
      teams_picked.any? {|t| t.nfl_covid_ranking == 1}
    end

end
