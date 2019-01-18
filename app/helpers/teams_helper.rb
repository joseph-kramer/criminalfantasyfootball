module TeamsHelper

  def quest_status
    if @team.is_quest_complete
      content_tag(:span, 'Complete', style: "color: #2ecc71;")
    else
      content_tag(:span, 'Incomplete', style: "color: #f40b0b;")
    end
  end

  def has_wkpick(w)
    if @team.wkpicks.find_by(week: w) != nil
      true
    else
      false
    end
  end
end
