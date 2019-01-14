class Mission < ApplicationRecord
  belongs_to :quest
  belongs_to :team
end
