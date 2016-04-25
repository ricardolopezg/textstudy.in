class RemoveStringFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :string, :string
  end
end
