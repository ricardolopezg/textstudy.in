class ChangeBillingAddressName < ActiveRecord::Migration
  def change
    rename_column :profiles, :billing_address, :billing_address1
  end
end
