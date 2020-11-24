class Pokemon < ActiveRecord::Base

  serialize :abilities

  after_initialize do |pokemon|
    pokemon.abilities = [] if pokemon.abilities == nil
  end

  validates :name, presence: true
  validates :name, uniqueness: true

end
