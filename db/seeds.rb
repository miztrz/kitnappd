rand(20..50).times do
	hourly = rand(10..25)
	daily = hourly * 10
	Kitten.create(
			name: "#{Faker::Creature::Cat.name}" ,
			breed: "#{Faker::Creature::Cat.breed}",
			description: Faker::GreekPhilosophers.quote,
			hourly_rate: hourly,
			daily_rate: daily,
			active: rand(1..2).odd?
	)
end