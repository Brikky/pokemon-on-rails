class CreateJoinPokemonTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemon_types do |t|
      t.belongs_to :pokemon, foreign_key: true
      t.belongs_to :element_type, foreign_key: true
    end
  end
end
