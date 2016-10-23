class PokemonType < ApplicationRecord
  belongs_to :pokemon
  belongs_to :element_type
end
