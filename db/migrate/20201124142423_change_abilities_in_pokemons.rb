class ChangeAbilitiesInPokemons < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :pokemons do |t|
        dir.up   { t.change :abilities, :text, array: true }
        dir.down { t.change :abilities, :text }
      end
    end
  end
end
