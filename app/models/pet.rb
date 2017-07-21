class Pet < ApplicationRecord
  validates :name, :breed, :species, :age, presence: true

  def self.random
    Pet.find(rand((Pet.first.id)..(Pet.last.id)))
  end
end
