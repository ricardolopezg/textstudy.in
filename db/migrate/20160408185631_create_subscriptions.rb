class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :subject_id
      t.datetime :expiration

      t.timestamps null: false
    end
  end
end
