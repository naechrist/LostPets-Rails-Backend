class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.integer :pet_type_id
      t.string :name
      t.text :description
      t.text :location
      t.integer :contact_number

      t.timestamps
    end
  end
end
