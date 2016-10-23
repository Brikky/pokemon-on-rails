class CreateElementTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :element_types do |t|
      t.string :name
      t.string :strong_against, array: true
      t.string :weak_against, array: true
      t.timestamps
    end
  end
end
