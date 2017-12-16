class CreateSubscribers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscribers do |t|
      t.string :email
      t.integer :event_id

      t.timestamps
    end

    add_index :subscribers, :event_id
  end
end
