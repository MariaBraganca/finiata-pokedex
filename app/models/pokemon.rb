class Pokemon < ActiveRecord::Base

  serialize :abilities

  # manually set abilities to default = []
  after_initialize do |pokemon|
    pokemon.abilities = [] if pokemon.abilities == nil
  end

  # validation for name
  validates :name, presence: true
  validates :name, uniqueness: true
end
