class AddStripeIdToCharge < ActiveRecord::Migration
  def change
    add_column :charges, :stripe_id, :string
  end
end
