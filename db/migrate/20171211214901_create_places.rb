class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :address
      t.string :city
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
