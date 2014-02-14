class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.string     :type
      t.references :person
      t.timestamps
    end
    add_index :profiles, :user_id
    add_index :profiles, :person_id
    add_index :profiles, :type
  end
end
