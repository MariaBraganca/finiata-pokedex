class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.string :species
      t.text :abilities
      t.string :url
      t.string :img
    end
  end
end
