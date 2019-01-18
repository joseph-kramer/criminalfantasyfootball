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

    def is_quest_complete
        case quests.name
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
          else
            false
          end
        end
    end

    def quest_supporting_role
      if teams_picked.any? do |t|
        t.crimes.any? do |c|
          c.is_player == false
        end
      end
    end

    def quest_shot_sheriff
      if teams_picked.any? do |t|
        t.crimes.any? do |c|
          c.characteristics.exists? Characteristic.find_by(name: "Gun").id
        end
      end
    end

    def quest_mulligan
      if teams_picked.first.crimes.count == 0
    end

    def quest_cant_stop
      #uniq
      #make array of names for each team, see if array = array.uniq
      true
    end

    def quest_international_man
      if teams_picked.any? do |t|
        t.crimes.any? do |c|
          c.characteristics.exists? Characteristic.find_by(name: "Outside USA").id
        end
      end
    end

    def quest_riding_bench
      if teams_picked.sum(&:total_suspension_games) > 15
    end

    def quest_partner_crime
      if teams_picked.any? do |t|
        t.crimes.any? do |c|
          c.characteristics.exists? Characteristic.find_by(name: "Teammate Involved").id
        end
      end
    end

    def quest_narcotics
      #has_drug_crime
      #see if 2 or more teams
      true
    end




end
