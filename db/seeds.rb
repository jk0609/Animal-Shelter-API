class Seed

  Pet.destroy_all

  def self.begin
    seed = Seed.new
    seed.generate_pets
    # user = User.new
    # user.name = 'admin'
    # user.email = 'admin@admin.com'
    # user.password = '123456'
    # user.admin = true
    # user.save!
  end

  def generate_pets
    10.times do |i|
      Pet.create!(
        name: Faker::Name.first_name,
        species: 'cat',
        breed: Faker::Cat.breed,
        age: rand(3..16)
      )
    end
    10.times do |i|
      Pet.create!(
        name: Faker::Name.first_name,
        species: 'dog',
        breed: Faker::Lorem.word,
        age: rand(3..16)
      )
    end
  end
end

Seed.begin
