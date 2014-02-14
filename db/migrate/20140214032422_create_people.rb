class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string      :name
      t.string      :first_last_name
      t.string      :second_last_name
      t.string      :gender
      t.date        :date_of_birth
      t.timestamps
    end
    add_index :people, :name
    add_index :people, :first_last_name
  end
end
