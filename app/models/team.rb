class Team < ApplicationRecord
  belongs_to :trainer

  has_many :pokemon_groups
  has_many :pokemons, through: :pokemon_groups

  def index
  end
end
