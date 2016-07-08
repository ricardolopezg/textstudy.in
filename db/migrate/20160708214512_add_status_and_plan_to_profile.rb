class AddStatusAndPlanToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :status, :string
    add_column :profiles, :plan, :string
  end
end
