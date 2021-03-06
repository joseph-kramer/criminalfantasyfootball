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

  def countdown_format(d)
    days_left = (d-Date.today).to_i
    if (days_left < 0)
      content_tag(:span, days_left.to_s + " days", style: "color: #f40b0b;")
    else
      content_tag(:span, days_left.to_s + " days")
    end
  end

end
