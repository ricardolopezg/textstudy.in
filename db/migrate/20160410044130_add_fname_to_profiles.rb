class AddFnameToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :fname, :string
  end
end
