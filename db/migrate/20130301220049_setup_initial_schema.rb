class SetupInitialSchema < ActiveRecord::Migration

  def change 
    create_table "recipes", :force => true do |t|
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "steps", :force => true do |t|
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end
  
end
