class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|

      t.string :species
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
