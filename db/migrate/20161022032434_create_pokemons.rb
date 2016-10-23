class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :number
      t.string :region
      t.string :image
      t.string :elements, array: true
      t.timestamps
    end
  end
end
