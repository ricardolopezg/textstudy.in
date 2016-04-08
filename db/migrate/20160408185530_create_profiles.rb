class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :mobile_phone
      t.string :alt_phone
      t.string :billing_phone
      t.string :billing_address
      t.string :string
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip
      t.string :billing_country

      t.timestamps null: false
    end
  end
end
