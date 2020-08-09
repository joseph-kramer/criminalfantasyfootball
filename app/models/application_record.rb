class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def current_season
    2020
  end

end
