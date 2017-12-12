class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :place_id, null: false
      t.string :cover
      t.datetime :started_at, null: false
      t.string :public_url
      t.integer :organizer_id, null: false

      t.timestamps
    end

    add_index :events, :place_id
    add_index :events, :organizer_id
  end
end
