class CreateRolesUsers < ActiveRecord::Migration
  def change
    create_table "enrollments", :force => true do |t|
      t.integer  "user_id"
      t.integer  "role_id"
      t.timestamps
    end
    add_index :enrollments, :user_id
    add_index :enrollments, :role_id
    add_index :enrollments, [ :user_id, :role_id ]
  end
end
