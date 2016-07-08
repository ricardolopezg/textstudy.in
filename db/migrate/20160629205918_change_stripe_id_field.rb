class ChangeStripeIdField < ActiveRecord::Migration
  def change
    rename_column :charges, :stripe_id, :stripe_customer_id
  end
end
