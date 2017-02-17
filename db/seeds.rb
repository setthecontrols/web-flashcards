Article.destroy_all
Category.destroy_all


10.times do |i|
  category = Category.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph)
	5.times do
		category.articles << Article.create(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, price: "$#{Faker::Commerce.price}", email: Faker::Internet.email, category_id: i)
	end	
end