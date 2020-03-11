User.create(
		name: "Hettie H. Hackett",
		email: "test_account@example.com",
		password: 'pwd123'
)
puts "test_account@example.com created for you to test with. Password is 'pwd123'."

9.times do
	User.create(
			name: Faker::FunnyName.three_word_name,
			email: Faker::Internet.unique.safe_email,
			password: 'pwd123'
	)
end
puts "9 fake users created"

today = Date.today
start_date = today - 7
length = rand(1..6)
8.times do
	Kitten.create(
			name: Faker::Creature::Cat.name,
			breed: Faker::Creature::Cat.breed,
			description: "#{Faker::Lorem.paragraph} " * rand(3..10),
			daily_rate: rand(20..40),
			active: true,
			user_id: User.first.id
	)
	Booking.create(
			kitten_id: Kitten.last.id,
			start_time: start_date,
			end_time: start_date + length,
			total: Kitten.last.daily_rate * length,
			user_id: rand(2..10),
			paid: true,
			confirmed: true,
			length_human: "#{length} Days"
	)
	start_date += rand(2..5)
	length = rand(1..6)
end

2.times do
	Kitten.create(
			name: Faker::Creature::Cat.name,
			breed: Faker::Creature::Cat.breed,
			description: "#{Faker::Lorem.paragraph} " * rand(3..10),
			daily_rate: rand(20..40),
			active: false,
			user_id: User.first.id
	)
end
puts "8 kittens created with incoming booking data, and 2 pawsed kitties."

other_active = 0
start_date = today - 7
5.times do
	Kitten.create(
			name: Faker::Creature::Cat.name,
			breed: Faker::Creature::Cat.breed,
			description: "#{Faker::Lorem.paragraph} " * rand(3..10),
			daily_rate: rand(20..40),
			active: true,
			user_id: rand(2..10)
	)
	Booking.create(
			kitten_id: Kitten.last.id,
			start_time: start_date,
			end_time: start_date + length,
			total: Kitten.last.daily_rate * length,
			user_id: 1,
			paid: true,
			confirmed: true,
			length_human: "#{length} Days"
	)
	start_date += rand(4..7)
	length = rand(1..6)
end
puts "5 kittens created and assigned to other test users, and outgoing booking data created."

rand(60..100).times do
	Kitten.create(
		name: Faker::Creature::Cat.name,
		breed: Faker::Creature::Cat.breed,
		description: "#{Faker::Lorem.paragraph} " * rand(3..10),
		daily_rate: rand(20..40),
		active: true,
		user_id: rand(2..10)
	)
	other_active += 1
end
puts "#{other_active} kittens created and assigned to other test users, and outgoing booking data created."

other_pawsed = 0
rand(10..20).times do
	Kitten.create(
			name: Faker::Creature::Cat.name,
			breed: Faker::Creature::Cat.breed,
			description: "#{Faker::Lorem.paragraph} " * rand(3..10),
			daily_rate: rand(20..40),
			active: false,
			user_id: rand(2..10)
	)
	other_pawsed += 1
end
puts "#{other_pawsed} pawsed kittens created and assigned to other test users."
