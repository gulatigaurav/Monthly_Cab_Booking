class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
    t.integer  "cab_id" 
    t.string   "source"            
    t.string   "destination"     
    t.string   "via"         
      t.timestamps
    end
  end
end
