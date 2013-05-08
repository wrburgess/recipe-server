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
  end

end
