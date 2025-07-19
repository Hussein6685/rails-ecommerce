# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

5.times do |index|
  Category.create!(
    title: "صنف #{index}"
  )
end

20.times do |index|
  Product.create!(
    name: "المنتج #{index}",
    details: "صنف #{index}",
    price: index * 50,
    image_url: "products/0#{1 + index % 8}.jpg",
    size: 1 + index % 3,
    category_id: 1 + index % 5,
  )
end
