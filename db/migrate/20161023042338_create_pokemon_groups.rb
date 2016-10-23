class CreatePokemonGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemon_groups do |t|
      t.belongs_to :pokemon, foreign_key: true
      t.belongs_to :team, foreign_key: true
    end
  end
end
