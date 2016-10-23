class Team < ApplicationRecord
  belongs_to :trainer

  has_many :pokemon_groups, dependent: :destroy
  has_many :pokemons, through: :pokemon_groups

end
