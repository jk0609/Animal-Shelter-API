class Pet < ApplicationRecord
  validates :name, :breed, :species, :age, presence: true

  def self.random
    Pet.find(rand((Pet.first.id)..(Pet.last.id)))
  end

  def self.search(name)
    Pet.where(name: name)
  end
end
