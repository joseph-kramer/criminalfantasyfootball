class User < ApplicationRecord
  has_secure_password
  has_many :teams, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, format: /\A\S+@\S+\z/, uniqueness: { case_sensitive: false }

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    user && user.authenticate(password)
  end

  def current_team
    teams.find_by(season: current_season)
  end

end
