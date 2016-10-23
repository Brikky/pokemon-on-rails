class Pokemon < ApplicationRecord
  has_many :pokemon_types, dependent: :destroy
  has_many :element_types, through: :pokemon_types

  has_many :pokemon_teams, dependent: :destroy
  has_many :teams, through: :pokemon_teams
end
