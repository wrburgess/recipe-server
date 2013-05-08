require 'csv'

CSV.foreach("#{Rails.root}/db/fill/recipes.csv", :headers => :first_row) do |row|
  Recipe.create!(name: row[0], description: row[1])
  puts "Recipe created: #{row[0]}, #{row[1]}"
end

CSV.foreach("#{Rails.root}/db/fill/steps.csv", :headers => :first_row) do |row|
  Step.create!({ name: row[0], description: row[1], weight: row[2], recipe_id: row[3] }, without_protection: true)
  puts "Step created: #{row[0]}, #{row[1]}, #{row[2]}, #{row[3]}"
end