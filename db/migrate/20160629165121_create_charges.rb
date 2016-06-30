class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.references :user, index: true, foreign_key: true
      t.string :plan
      t.date :expiration
      t.string :status

      t.timestamps null: false
    end
  end
end
