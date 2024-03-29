class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string      :name,              :limit => 40
      t.string      :authorizable_type, :limit => 40
      t.string      :authorizable_id
      t.timestamps
    end
    add_index :roles, :name
    add_index :roles, :authorizable_id
  end
end
