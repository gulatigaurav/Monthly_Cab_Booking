class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|

    t.text     "did",       limit: 65535
    t.string   "name"
    t.float    "salary",   limit: 24
    t.integer  "c_id"    
    t.text     "address",  limit: 65535
    t.integer  "phone"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  
      t.timestamps
    end
  end
end
