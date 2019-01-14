class Element < ApplicationRecord
  belongs_to :crime
  belongs_to :characteristic
end
