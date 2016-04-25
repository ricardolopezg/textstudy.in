class AddBillingAddress2ToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :billing_address2, :string
  end
end
