class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.string :from_number
      t.string :to_number
      t.integer :questions_id
      t.string :response
      t.string :timestamp
      t.integer :version

      t.timestamps null: false
    end
  end
end
