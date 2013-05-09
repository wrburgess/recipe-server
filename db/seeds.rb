require 'csv'

CSV.foreach("#{Rails.root}/db/fill/ingredients.csv", :headers => :first_row) do |row|
  Ingredient.create!({ name: row[0], description: row[1]}, without_protection: true)
  puts "Ingredient created: #{row[0]}, #{row[1]}}"
end

CSV.foreach("#{Rails.root}/db/fill/tools.csv", :headers => :first_row) do |row|
  Tool.create!({ name: row[0], description: row[1]}, without_protection: true)
  puts "Tool created: #{row[0]}, #{row[1]}}"
end

CSV.foreach("#{Rails.root}/db/fill/recipes.csv", :headers => :first_row) do |row|
  Recipe.create!(name: row[0], description: row[1])
  puts "Recipe created: #{row[0]}, #{row[1]}"
end

CSV.foreach("#{Rails.root}/db/fill/steps.csv", :headers => :first_row) do |row|
  Step.create!({ name: row[0], description: row[1], weight: row[2], recipe_id: row[3] }, without_protection: true)
  puts "Step created: #{row[0]}, #{row[1]}, #{row[2]}, #{row[3]}"
end

CSV.foreach("#{Rails.root}/db/fill/step_ingredients.csv", :headers => :first_row) do |row|
  StepIngredient.create!({ step_id: row[0], ingredient_id: row[1], volume: row[2]}, without_protection: true)
  puts "Step Ingredient created: #{row[0]}, #{row[1]}, #{row[2]}}"
end

CSV.foreach("#{Rails.root}/db/fill/step_tools.csv", :headers => :first_row) do |row|
  StepTool.create!({ step_id: row[0], tool_id: row[1]}, without_protection: true)
  puts "Step Tool created: #{row[0]}, #{row[1]}, #{row[2]}}"
end

