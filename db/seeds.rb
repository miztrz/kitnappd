5.times do
	User.create(
			name: Faker::FunnyName.three_word_name,
			email: Faker::Internet.unique.safe_email,
			password: 'pwd123'
	)
end

puts "5 fake users created"

rand(5..10).times do
	hourly = rand(10..25)
	daily = hourly * 10
	Kitten.create(
			name: Faker::Creature::Cat.name ,
			breed: Faker::Creature::Cat.breed,
			description: "#{Faker::Lorem.paragraph} " * rand(3..10),
			hourly_rate: hourly,
			daily_rate: daily,
			active: rand(1..2).odd?,
			user_id: rand(1..5)
	)
end

puts "#{Kitten.all.count} kittens created."