class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def current_season
    2019
  end

end
