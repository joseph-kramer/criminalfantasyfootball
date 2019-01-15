class Quest < ApplicationRecord
  has_many :teams, through: :missions

  def is_complete
      case name
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
    true
  end

  def quest_shot_sheriff
    true
  end

  def quest_mulligan
    if current_user.teams.first.teams_picked.first.crimes.count == 0
  end

  def quest_cant_stop
    true
  end

  def quest_international_man
    true
  end

  def quest_riding_bench
    true
  end

  def quest_partner_crime
    true
  end

  def quest_narcotics
    true
  end

end
