class AddBirthdayToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :birthday, :datetime
  end
end
