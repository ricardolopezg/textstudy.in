class AddStripeCustIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :stripe_customer_id, :string
  end
end
