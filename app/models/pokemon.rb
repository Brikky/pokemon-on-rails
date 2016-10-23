class Pokemon < ApplicationRecord
  has_many :pokemon_types
  has_many :element_types, through: :pokemon_types

  has_many :pokemon_groups
  has_many :teams, through: :pokemon_groups

end
end
