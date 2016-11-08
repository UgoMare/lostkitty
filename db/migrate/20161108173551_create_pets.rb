class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :found_at
      t.string :category

      t.timestamps
    end
  end
end
