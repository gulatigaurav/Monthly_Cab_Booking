class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
t.string "name", :limit=>25
t.text "roll"
t.text "address"
t.text "phone"
t.string "pick_uo_loc"



      t.timestamps
    end
  end
end
