class CreateActormovies < ActiveRecord::Migration[5.2]
  def change
    create_table :actormovies do |t|
      t.string :role
      t.references :actor, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
