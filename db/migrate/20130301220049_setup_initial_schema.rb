class SetupInitialSchema < ActiveRecord::Migration
  def change 
    create_table "recipes", :force => true do |t|
      t.string   "name", :null => false
      t.string   "description"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "steps", :force => true do |t|
      t.string   "name",       :null => false
      t.string   "description"
      t.integer  "weight", :null => false, :default => 0 
      t.integer  "recipe_id", :null => false
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "ingredients", :force => true do |t|
      t.string "name", :null => false
      t.string "description"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "step_ingredients", :force => true do |t|
      t.integer "step_id", :null => false
      t.integer "ingredient_id", :null => false
      t.string "volume"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end 

    create_table "tools", :force => true do |t|
      t.string "name", :null => false
      t.string "description"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "step_tools", :force => true do |t|
      t.integer "step_id", :null => false
      t.integer "tool_id", :null => false
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end
end
